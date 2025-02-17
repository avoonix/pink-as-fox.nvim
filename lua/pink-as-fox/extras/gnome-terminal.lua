---------------------------------- GNOME-TERMINAL EXTRA TEMPLATE -----------------------------------

return [[
set -eE
trap 'echo -e "\n... exiting \`pink-as-fox.sh\` with errors"' ERR

################################ usage and help ################################

help_message='
Usage: ./pink-as-fox.sh [-d] [-e] [-h] [-n PROFILE_NAME] [-u PROFILE_UUID]
    -d :  sets the new terminal profile as the default
    -e :  sets extra non-theme settings (to get the showcase UI appearance)
    -h :  show this help message
    -n PROFILE_NAME:  the terminal profile name (default: PinkAsFox)
    -u PROFILE_UUID:  UUID to use for terminal profile ID'

function usage_help {
  echo "$help_message"
  exit 0
}

function usage_error {
  echo "$1"
  echo "$help_message"
  exit 1
}

############################### argument parser ################################

# ensure no positional arguments before options
[[ -z "$1" || "$1" =~ ^\-.$ ]] .. ']]' .. [[ || usage_error 'ERROR: Invalid positional arguments before options'

# set default arguments
profile_name=PinkAsFox
profile_uuid=
set_as_default=0
set_non_theme_extras=0

# parse user arguments
while getopts "dehn:u:" option; do
  case "$option" in
    d) set_as_default=1 ;;
    e) set_non_theme_extras=1 ;;
    h) usage_help ;;
    n) profile_name="$OPTARG" ;;
    u) profile_uuid="$OPTARG" ;;
    \?) usage_error 'ERROR: Incorrect option; please check usage' ;;
  esac
done
shift "$((OPTIND-1))"

# ensure no positional arguments after options
[ -n "$1" ] && usage_error 'ERROR: Invalid positional arguments after options'

############################### profile helpers ################################

function create_profile {
  # ensure `uuidgen` command exists
  if ! uuidgen_path="$(type -p uuidgen)" || [ -z $uuidgen_path ]; then
    echo 'ERROR: `uuidgen` command not found.
    It is needed to create a new GNOME terminal profile.
    Please install it and rerun the script.'
    return 1
  fi

  dconf_term_profiles='/org/gnome/terminal/legacy/profiles:'

  # create new profile UUID, if not provided by user
  if [ -z $profile_uuid ]; then
    for ((i = 0; i < 5; i++)); do
      profile_uuid="$(uuidgen)"
      profile_dir="$dconf_term_profiles/:$profile_uuid"
      [ -z "$(dconf list "$profile_dir/")" ] && break

      [ $i -eq 4 ] && {
        echo 'ERROR: A valid GNOME terminal profile UUID could not be created.
    Please provide one manually as a command-line argument.'
        return 1
      }
    done
  fi

  # update the terminal profiles list
  profiles_list="$(dconf read "$dconf_term_profiles/list")"
  profiles_list="${profiles_list:0:${#profiles_list}-1}, '$profile_uuid']"
  dconf write "$dconf_term_profiles/list" "$profiles_list"
  echo "Created a new GNOME terminal profile '$profile_name' with ID: $profile_uuid"

  # set the new terminal profile as the default
  if [ $set_as_default -eq 1 ]; then
    dconf write "$dconf_term_profiles/default" "'$profile_uuid'"
    echo "Set the new terminal profile as the default"
  fi
}

function update_profile {
  # add the below fields to the new profile
  declare -A profile_fields=(
    [visible-name]="'$profile_name'"
    [foreground-color]="'${c.fg}'"
    [background-color]="'${c.bg}'"
    [use-theme-colors]="false"
    [use-theme-transparency]="false"
    [bold-is-bright]="false"
    [bold-color-same-as-fg]="true"
    [highlight-colors-set]="true"
    [highlight-foreground-color]="'${c.fg}'"
    [highlight-background-color]="'${c.visual}'"
  )
  for field in ${!profile_fields[@]}; do
    dconf write "$profile_dir/$field" "${profile_fields[$field]}"
  done

  # add the below terminal palette to the new profile
  declare -a palette16=(
    "'${t.black.1}'" "'${t.red.1}'" "'${t.green.1}'" "'${t.yellow.1}'" "'${t.blue.1}'" "'${t.purple.1}'" "'${t.cyan.1}'" "'${t.white.1}'"
    "'${t.black.2}'" "'${t.red.2}'" "'${t.green.2}'" "'${t.yellow.2}'" "'${t.blue.2}'" "'${t.purple.2}'" "'${t.cyan.2}'" "'${t.white.2}'"
  )
  palette="$(IFS=, ; echo "${palette16[*]}")"
  dconf write "$profile_dir/palette" "[$palette]"

  echo 'Added theme settings to the new profile'
}

##################################### main #####################################

function non_theme_extras {
  # add the non-theme extra fields to the new profile
  declare -A extra_fields=(
    [audible-bell]="false"
    [use-system-font]="false"
    [font]="'Hurmit Nerd Font Mono Medium 10'"
    [cell-height-scale]="1.50"
    [cell-width-scale]="1.10"
    [default-size-rows]="511"
    [default-size-columns]="511"
    [scrollbar-policy]="'never'"
  )
  for field in ${!extra_fields[@]}; do
    dconf write "$profile_dir/$field" "${extra_fields[$field]}"
  done

  echo 'Added extra non-theme settings to the new profile'
}

function main {
  create_profile
  update_profile
  [ $set_non_theme_extras -eq 1 ] && non_theme_extras
  echo "Finished 'pink-as-fox.sh'"
}

main
]]
