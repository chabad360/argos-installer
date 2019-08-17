#!/bin/bash

user=$(whoami) # User that's installing said extension
argos="/home/$user/.config/argos" # Argos script folder

function zenityc () { # Prevents script from dying if zenity isn't present
    if [ "$(command -v zenity)" ]; then
        zenity "$@"
    else
        return 0
    fi
}

if [[ "$1" == "bitbar:"* ]]; then
    title=${1#*title=}
    title=${title%%&amp;*}
    title=$(python -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))" "$title") # Decode Title

    ref=${1#*src=}
    ref=$(python -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))" "$ref") # Decode Url
    
    script=${ref##*/}

    if echo "$title" | grep "src="; then # Ensure an ordinary title
        title=$script
    elif ! "$title"; then
        title=$script
    fi

    if ! zenityc --question --title="Argos Plugin Installer" --text="Are you sure you want to install \"$title\" from $ref" --ellipsize; then
        zenityc --error --text="Installation cancelled"
        exit 1
    fi

    if [[ ! -d "$argos" ]]; then
        echo "Creating Argos script folder $argos"
        mkdir "$argos" # Add the argos folder if it doesn't exist
    fi

    echo "Installing plugin from $ref"
    wget "$ref" -O "$argos/$script"
    chmod 755 "$argos/$script" 
    
    echo "Installed $script succesfully!"
    zenityc --info --title="Argos Plugin Installer" --text="Installed $script succesfully!"

else
    xdg-open "$1" # Just open with the default handler
fi