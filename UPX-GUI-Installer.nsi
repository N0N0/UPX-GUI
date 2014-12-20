; example2.nsi
;
; Modifizierte Version von example2.nsi für den UPX-GUI 2002 Installer

;--------------------------------

; The name of the installer
Name "UPX-GUI 2002 v3.00"

; The file to write
OutFile "UPX-GUI 2002.exe"

LicenseData "${NSISDIR}\GNU.TXT"
LicenseForceSelection checkbox
LicenseForceSelection checkbox "Ich verstehe und akzeptiere die Lizenzvereinbarungen für dieses Programm."



; The default installation directory
InstallDir "$PROGRAMFILES\UPX-GUI 2002"

;--------------------------------

; Pages

Page License
Page components
Page directory
Page instfiles

LoadLanguageFile "${NSISDIR}\Contrib\Language files\German.nlf"

UninstPage uninstConfirm
UninstPage instfiles

;--------------------------------

; The stuff to install
Section "UPX-GUI 2002 (erforderlich)"

  SectionIn RO

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR

  ; Put file there
  File "GNU.TXT"
  File "Liesmich.txt"
  File "UPXGUI.EXE"
  File "WhatsNew.txt"

  CreateDirectory "$INSTDIR\files"
  CreateDirectory "$INSTDIR\src"
  SetOutPath $INSTDIR\files
  File "files\BUGS"
  File "files\COPYING"
  File "files\LICENSE"
  File "files\README"
  File "files\NEWS"
  File "files\THANKS"
  File "files\upx.exe"
  File "files\upx.doc"
  File "files\upx.html"
  File "files\upxfix.exe"
  SetOutPath $INSTDIR

  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\UPX-GUI 2002" "DisplayName" "UPX-GUI 2002"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\UPX-GUI 2002" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\UPX-GUI 2002" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\UPX-GUI 2002" "NoRepair" 1
  WriteUninstaller "uninstall.exe"

SectionEnd

;--------------------------------

; Optional section (can be disabled by the user)
Section "Start-Menü Einträge"

  CreateDirectory "$SMPROGRAMS\UPX-GUI 2002"
  CreateShortCut "$SMPROGRAMS\UPX-GUI 2002\Uninstall.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
  CreateShortCut "$SMPROGRAMS\UPX-GUI 2002\UPX-GUI 2002.lnk" "$INSTDIR\UPXGUI.exe" "" "$INSTDIR\UPXGUI.exe" 0
  CreateShortCut "$SMPROGRAMS\UPX-GUI 2002\License.lnk" "$INSTDIR\GNU.txt" "" "$INSTDIR\GNU.txt" 0
  CreateShortCut "$SMPROGRAMS\UPX-GUI 2002\Liesmich.lnk" "$INSTDIR\Liesmich.txt" "" "$INSTDIR\Liesmich.txt" 0
  CreateShortCut "$SMPROGRAMS\UPX-GUI 2002\Quellcode.lnk" "$INSTDIR\src" "" "$INSTDIR\src" 0

SectionEnd

;--------------------------------


; Optionale Sektion
Section "Desktop Icon"

  CreateShortCut "$DESKTOP\UPX-GUI 2002.lnk" "$INSTDIR\UPXGUI.exe" "" "$INSTDIR\UPXGUI.exe" 0

SectionEnd

;--------------------------------


; Optionale Sektion
Section /o "Quellcode (VB6)"

  SetOutPath $INSTDIR\src
  File "src\Form1.frm"
  File "src\frmMain.frm"
  File "src\frmMain.frx"
  File "src\Liesmich.txt"
  File "src\Module1.bas"
  File "src\MSSCCPRJ.SCC"
  File "src\Speichern Dialog für UPX-GUI 2002.txt"
  File "src\UPX-Gui 2002.frm"
  File "src\UPX-Gui 2002.frx"
  File "src\UPXGUI.vbp"
  File "src\UPXGUI.vbw"

SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"

  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\UPX-GUI 2002"

  ; Remove files and uninstaller
  Delete $INSTDIR\GNU.txt
  Delete $INSTDIR\Liesmich.txt
  Delete $INSTDIR\UPXGUI.EXE
  Delete $INSTDIR\WhatsNew.txt
  Delete $INSTDIR\uninstall.exe
  Delete $INSTDIR\files\BUGS
  Delete $INSTDIR\files\COPYING
  Delete $INSTDIR\files\LICENSE
  Delete $INSTDIR\files\NEWS
  Delete $INSTDIR\files\README
  Delete $INSTDIR\files\THANKS
  Delete $INSTDIR\files\upx.doc
  Delete $INSTDIR\files\upx.exe
  Delete $INSTDIR\files\upx.html
  Delete $INSTDIR\files\upxfix.exe
  Delete $INSTDIR\src\Form1.frm
  Delete $INSTDIR\src\frmMain.frm
  Delete $INSTDIR\src\frmMain.frx
  Delete $INSTDIR\src\Liesmich.txt
  Delete $INSTDIR\src\Module1.bas
  Delete $INSTDIR\src\MSSCCPRJ.SCC
  Delete "$INSTDIR\src\Speichern Dialog für UPX-GUI 2002.txt"
  Delete "$INSTDIR\src\UPX-Gui 2002.frm"
  Delete "$INSTDIR\src\UPX-Gui 2002.frx"
  Delete $INSTDIR\src\UPXGUI.vbp
  Delete $INSTDIR\src\UPXGUI.vbw


  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\UPX-GUI 2002\*.*"
  Delete "$DESKTOP\UPX-GUI 2002.lnk"

  ; Remove directories used
  RMDir "$SMPROGRAMS\UPX-GUI 2002"
  RMDir "$INSTDIR\files"
  RMDir "$INSTDIR\src"
  RMDir "$INSTDIR"

SectionEnd

;--------------------------------

