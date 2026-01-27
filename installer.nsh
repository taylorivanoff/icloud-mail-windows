!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Mail" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-mail" "" "URL:iCloud Mail"
  WriteRegStr HKCU "Software\Classes\icloud-mail" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-mail\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Mail"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-mail"
!macroend
