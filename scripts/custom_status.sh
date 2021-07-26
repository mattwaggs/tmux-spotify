#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"
source "$CURRENT_DIR/artist.sh"
source "$CURRENT_DIR/track.sh"
source "$CURRENT_DIR/status.sh"

music_status() {
read -r -d '' SCRIPT <<END
set theApp to "$APP"

if application theApp is running then
  tell application "$APP"
    return player state as string
  end tell
end if
END

osascript -e "${SCRIPT}"
}

print_custom_status() {
  local status=$(music_status)
  if [[ "$status" == "playing" || "$status" == "paused" ]]; then
    echo "$(print_music_status) $(print_artist): $(print_track) "
  else
    echo ""
  fi
}

main() {
  print_custom_status
}

main


