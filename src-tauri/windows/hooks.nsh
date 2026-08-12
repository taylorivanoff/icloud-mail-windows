; Startup + icloud-mail:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Mail" '"$INSTDIR\iCloud Mail.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-mail" "" "URL:iCloud Mail"
  WriteRegStr HKCU "Software\Classes\icloud-mail" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-mail\shell\open\command" "" '"$INSTDIR\iCloud Mail.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Mail"
  DeleteRegKey HKCU "Software\Classes\icloud-mail"
!macroend
