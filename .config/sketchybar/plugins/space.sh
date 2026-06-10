#!/usr/bin/env bash

#source "$HOME/.config/sketchybar/variables.sh" # Loads all defined colors
#
#SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
#
#SPACE_CLICK_SCRIPT="yabai -m space --focus $SID 2>/dev/null"
#
#if [ "$SELECTED" = "true" ]; then
#	sketchybar --animate tanh 5 --set "$NAME" \
#		icon.color="$RED" \
#		icon="${SPACE_ICONS[$SID - 1]}" \
#		click_script="$SPACE_CLICK_SCRIPT"
#else
#	sketchybar --animate tanh 5 --set "$NAME" \
#		icon.color="$COMMENT" \
#		icon="${SPACE_ICONS[$SID - 1]}" \
#		click_script="$SPACE_CLICK_SCRIPT"
#fi

# Load all defined colors
source "$HOME/.config/sketchybar/variables.sh"

# Define space icons array
SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

# Set the click script command with correct variable substitution
SPACE_CLICK_SCRIPT="yabai -m space --focus $SID 2>/dev/null"

# Check if SID is within the array range
if [[ "$SID" -ge 1 && "$SID" -le ${#SPACE_ICONS[@]} ]]; then
  # Adjust indexing (Bash arrays are zero-indexed, but assuming $SID starts from 1)
  ICON="${SPACE_ICONS[$((SID - 1))]}"

  if [ "$SELECTED" = "true" ]; then
    sketchybar --animate tanh 5 --set "$NAME" \
      icon.color="$RED" \
      icon="$ICON" \
      click_script="$SPACE_CLICK_SCRIPT"
  else
    sketchybar --animate tanh 5 --set "$NAME" \
      icon.color="$COMMENT" \
      icon="$ICON" \
      click_script="$SPACE_CLICK_SCRIPT"
  fi
else
  echo "Error: SID ($SID) is out of range for SPACE_ICONS array."
fi

