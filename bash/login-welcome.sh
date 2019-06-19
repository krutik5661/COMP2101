#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title=("Superman" "Crazy" "GodFather" "Punisherr" "Goodguy" "Unknown" "007")
title_index=$((RANDOM % ${#title[@]}))
titles=${title[$title_index]}
USER="KRUTIK"
hostname=$(hostname)
time=$(date +'%H:%M %p on %A')

Welcome=$(cat <<EOF
Welcome to planet $hostname, "$titles $USER!"

It is $time
EOF
)

###############
# Main        #
###############

cat <<EOF
$(cowsay "$Welcome")
EOF
