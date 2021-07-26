#!/usr/bin/env bash

get_music_status() {
  local prop="${1}"
read -r -d '' SCRIPT <<END
if application "Spotify" is running then
  tell application "Spotify"
    if player state is playing then
      return " ♫  " & (get artist of current track) & ": " & (get name of current track) & " " as Text
    else
      return " ♫  " & (get artist of current track) & ": " & (get name of current track) & " " as Text
    end if
  end tell
end if
return ""
END

osascript -e "$(printf "${SCRIPT}")"
}


main() {
  get_music_status
}

main
