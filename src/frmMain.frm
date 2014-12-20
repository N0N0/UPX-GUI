VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   3  'Fester Dialog
   Caption         =   "UPX-GUI 2002 v3.00 by -=pYRo=-"
   ClientHeight    =   5490
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5895
   ClipControls    =   0   'False
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5490
   ScaleWidth      =   5895
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Command4 
      Caption         =   "Original"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3960
      TabIndex        =   15
      Top             =   2280
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   ".BAK löschen"
      Enabled         =   0   'False
      Height          =   255
      Left            =   4680
      TabIndex        =   14
      Top             =   2280
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Testen"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3000
      TabIndex        =   13
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Lucida Console"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   600
      Width           =   5895
   End
   Begin VB.Frame Frame1 
      Caption         =   "Einstellungen"
      Height          =   1695
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Width           =   5655
      Begin VB.CheckBox Check3 
         Caption         =   "Letzte Datei merken"
         Height          =   255
         Left            =   3360
         TabIndex        =   16
         Top             =   240
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Erweiterte Einstellungen"
         Height          =   255
         Left            =   3360
         TabIndex        =   11
         Top             =   1320
         Width           =   2175
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Packen erzwingen"
         Height          =   255
         Index           =   1
         Left            =   3360
         TabIndex        =   10
         Top             =   720
         Width           =   1695
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Backup erhalten"
         Height          =   255
         Index           =   0
         Left            =   3360
         TabIndex        =   9
         Top             =   480
         Value           =   1  'Aktiviert
         Width           =   1695
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   600
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   450
         _Version        =   393216
         Min             =   1
         SelStart        =   9
         Value           =   9
      End
      Begin VB.Label Label4 
         Caption         =   "Min.                             Max."
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   960
         Width           =   2055
      End
      Begin VB.Label Label2 
         Caption         =   "Kompressionsrate"
         Height          =   255
         Left            =   480
         TabIndex        =   6
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H80000016&
      Enabled         =   0   'False
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   3360
      Width           =   5655
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      ToolTipText     =   "Zeigt die zu bearbeitende Datei an"
      Top             =   2640
      Width           =   5655
   End
   Begin MSComctlLib.Toolbar tbToolBar 
      Height          =   585
      Left            =   0
      Negotiate       =   -1  'True
      TabIndex        =   0
      Top             =   0
      Width           =   5880
      _ExtentX        =   10372
      _ExtentY        =   1032
      ButtonWidth     =   1588
      ButtonHeight    =   926
      AllowCustomize  =   0   'False
      Wrappable       =   0   'False
      Appearance      =   1
      ImageList       =   "imlToolbarIcons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   6
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Öffnen"
            Key             =   "Öffnen"
            Description     =   "Öffnen"
            Object.ToolTipText     =   "Öffnet eine neue Datei"
            ImageKey        =   "Open"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Entpacken"
            Key             =   "Entpacken"
            Description     =   "Entpackt die zu bearbeitende Datei"
            Object.ToolTipText     =   "Entpackt die ausgewählte Datei"
            ImageKey        =   "entpack"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Packen"
            Key             =   "Packen"
            Description     =   "Packt die zu bearbeitende Datei"
            Object.ToolTipText     =   "Packt die zu bearbeitende Datei"
            ImageKey        =   "pack"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Scannen"
            Key             =   "Scannen"
            Description     =   "Scannen"
            Object.ToolTipText     =   "Überprüft die zu bearbeitende Datei mit PEiD."
            ImageKey        =   "PEiDentifier"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "UPXFIX"
            Key             =   "UPXFIX"
            Description     =   "UPXFIX"
            Object.ToolTipText     =   "Kann veränderte UPX-Dateien entpacken."
            ImageKey        =   "UPXFIX"
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Info"
            Key             =   "Info"
            Description     =   "Info"
            Object.ToolTipText     =   "Informationen zu UPX-GUI"
            ImageKey        =   "Info"
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   4920
      Top             =   2880
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList imlToolbarIcons 
      Left            =   4200
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      UseMaskColor    =   0   'False
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0442
            Key             =   "Open"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0554
            Key             =   "Save"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0666
            Key             =   "pack"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":117A
            Key             =   "entpack"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1C8E
            Key             =   "pescan"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":28E2
            Key             =   "Info"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2B76
            Key             =   "UPXFIX"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2FCA
            Key             =   "PEiDentifier"
         EndProperty
      EndProperty
   End
   Begin VB.Label Label5 
      Caption         =   "Kommandozeilen Ausgabe:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   3120
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Zieldatei:"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   2400
      Width           =   735
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'///////////////////////////////////////////////////////////////////////////
'///////////////////////////////////////////////////////////////////////////
'UPX-GUI 2002 v3.00, a Graphical User Interface for UPX.
'Copyright (C) 2001-2007  -=pYRo=-.
'
'This program is free software; you can redistribute it and/or
'modify it under the terms of the GNU General Public License version 2
'as published by the Free Software Foundation.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'GNU General Public License for more details.
'
'You should have received a copy of the GNU General Public License
'along with this program; if not, write to the Free Software
'Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
'///////////////////////////////////////////////////////////////////////////
'///////////////////////////////////////////////////////////////////////////

Option Explicit

Private Declare Function CreatePipe Lib "kernel32" (phReadPipe _
        As Long, phWritePipe As Long, lpPipeAttributes As Any, _
        ByVal nSize As Long) As Long

Private Declare Function ReadFile Lib "kernel32" (ByVal hFile _
        As Long, ByVal lpBuffer As String, ByVal _
        nNumberOfBytesToRead As Long, lpNumberOfBytesRead As _
        Long, ByVal lpOverlapped As Any) As Long

Private Declare Function CreateProcessA Lib "kernel32" (ByVal _
        lpApplicationName As Long, ByVal lpCommandLine As _
        String, lpProcessAttributes As Any, lpThreadAttributes _
        As Any, ByVal bInheritHandles As Long, ByVal _
        dwCreationFlags As Long, ByVal lpEnvironment As Long, _
        ByVal lpCurrentDirectory As Long, lpStartupInfo As Any, _
        lpProcessInformation As Any) As Long

Private Declare Function CloseHandle Lib "kernel32" (ByVal _
        hObject As Long) As Long

'Gehört zur 8.3 convertierung des mnuFileOpen
Private Declare Function GetShortPathName Lib "kernel32" _
        Alias "GetShortPathNameA" (ByVal lpszLongPath As _
        String, ByVal lpszShortPath As String, ByVal _
        cchBuffer As Long) As Long

Private Type SECURITY_ATTRIBUTES
  nLength As Long
  lpSecurityDescriptor As Long
  bInheritHandle As Long
End Type

Private Type STARTUPINFO
  cb As Long
  lpReserved As Long
  lpDesktop As Long
  lpTitle As Long
  dwX As Long
  dwY As Long
  dwXSize As Long
  dwYSize As Long
  dwXCountChars As Long
  dwYCountChars As Long
  dwFillAttribute As Long
  dwFlags As Long
  wShowWindow As Integer
  cbReserved2 As Integer
  lpReserved2 As Long
  hStdInput As Long
  hStdOutput As Long
  hStdError As Long
End Type

Private Type PROCESS_INFORMATION
  hProcess As Long
  hThread As Long
  dwProcessID As Long
  dwThreadID As Long
End Type

Const NORMAL_PRIORITY_CLASS = &H20&
Const STARTF_USESTDHANDLES = &H100&


' Erweiterte Einstellungen
Private Sub Command1_Click()
  frmOptions.Show
End Sub

'Testen
Private Sub Command2_Click()
  Shell (Lastfile), vbNormalFocus
  If Dir(BakFile) = "" Then
     Command2.Enabled = False
     Exit Sub
  End If
  If Check1(0) = 1 Then
    Command3.Enabled = True
    Command4.Enabled = True
  End If
End Sub

' BAK löschen
Private Sub Command3_Click()
On Error GoTo backup_fehlt
Dim fehler As String
Kill (BakFile)
GoTo erfolg

backup_fehlt:
fehler = MsgBox("Backup-Datei konnte nicht gefunden/gelöscht werden", vbCritical, "Fehler")

erfolg:
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Lastfile = ""
BakFile = ""
End Sub

'Original (Wiederherstellen)
Private Sub Command4_Click()
  On Error GoTo fehler
  Dim Test As String
  Kill (Lastfile)
  Name BakFile As Lastfile
  Command2.Enabled = False
  Command3.Enabled = False
  Command4.Enabled = False
  GoTo ende

fehler:
MsgBox ("Das Original konnte nicht wiederhergestellt werden."), vbCritical, "Zugriffsfehler"
ende:
End Sub


Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer


    'close all sub forms
    For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
End Sub


Private Sub Slider1Val_Change()
'Steuerung der Kompressionssrate
 Slider1Val = Slider1

 If Slider1 = 1 Then
   Slider1Val = "f"
   Exit Sub
 End If
 If Slider1 = 10 Then
     Slider1Val = " --best"
     Exit Sub
 End If
End Sub


' Wegweiser für die Buttons der Symbolleiste
Private Sub tbToolBar_ButtonClick(ByVal Button As MSComCtlLib.Button)
    On Error Resume Next
    Select Case Button.Key
        Case "Info"
            info_Click
        Case "UPXFIX"
            UPXFIX_Click
        Case "Scannen"
            Scannen_Click
        Case "Packen"
            Packen_Click
        Case "Entpacken"
            Entpacken_Click
        Case "Öffnen"
            mnuFileOpen_Click
    End Select
End Sub


'Datei öffnen Dialog
Private Sub mnuFileOpen_Click()
    Dim sFile As String
    Dim sPfad As String
    With dlgCommonDialog
        .DialogTitle = "Öffnen"
        .CancelError = True
        .Filter = "Alle Dateien (*.*) | *.*|Alle Unterstützten Dateien (*.ARM; *. 386; *.COM; *.ELF; *.EXE; *.DLL; *.MACH; *.OCX; *.PSX; *.SCR; *.SYS; *.vmlinuz)| *.386; *.ARM; *.COM; *.ELF; *.EXE; *.DLL; *.MACH; *.OCX; *.PSX; *.SCR; *.SYS; *.vmlinuz|Apple Mac OS X: PPC32 (*.MACH)|*.MACH|MS-DOS: Anwendung (*.EXE; *.COM)| *.EXE; *.COM|Linux: Bootfähiger Kernel (*.vmlinuz)| *.vmlinuz|Linux:  AMD64/PPC32 (*.ELF)|*.ELF|Sony PS1: Anwendung (*.EXE; *.PSX; *.*)| *.EXE; *.PSX; *.*|Windows: ActiveX(*.OCX)| *.OCX|Windows: Anwendung (*.EXE)| *.EXE|Windows: Bildschirmschoner (*.SCR)| *.SCR|Windows: Dynamische Link Bibliotheken (*.DLL)| *.DLL|Windows: Systemdatei (*.SYS)| *.SYS|WindowsCE: ARM (*.ARM)|*.ARM"

        .FilterIndex = 2
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        Text1.Text = .FileName
        
        '--Hier wird der DateiPfad in Pfad gesplittet
        sFile = Text1.Text
        sPfad = Left$(sFile, InStrRev(sFile, "\"))
        If Right$(sPfad, 1) = "\" Then _
        sPfad = Left$(sPfad, Len(sPfad) - 1)

        '--Hier wird der Pfad in 8.3 convertiert
        Dim Result&, AA$

        AA = Space$(255)
        Result = GetShortPathName(sPfad, AA, Len(AA))
        sPfad = Mid$(AA, 1, Result)

        '--Hier wird der Dateiname extrahiert
        sFile = Right$(Text1.Text, Len(Text1.Text) - InStrRev(Text1.Text, "\"))
        sFile = "\" + sFile

        '--Hier wird der entgültige DateiPfad für die Kommandozeile erstellt
        '--Die Funktion Chr(34) erzeugt ein " am Anfang und Ende des Dateipfades,
        '--Somit wird die Unterstützung von langen Dateinamen in UPX gewärleistet.
        Text1.Text = Chr(34) + sPfad + sFile + Chr(34)
        
        '-- öffentlicher Schlüssel der als Pfadangabe für den Testen-Knopf und als
        '-- Basis für die Variable bakfile dient.
        Lastfile = Right(Text1.Text, Len(Text1.Text) - 1)
        Lastfile = Left(Lastfile, Len(Lastfile) - 1)
    End With
End Sub


'--Entpack Routine
Private Sub Entpacken_Click()
  Dim d As String
  Text2.Text = ""
  If Len(Text1.Text) = 0 Then
    Call mnuFileOpen_Click
    If Text1.Text = "" Then
      Exit Sub
    End If
  End If
  Text2.Text = ""
  d = "files\upx.exe" + " -d " + Text1.Text
  Text2.Text = d
    ExecCmd (d)
  ' Letzte Datei merken an/aus
  If Check3 = 0 Then
    Text1.Text = ""
  End If
End Sub


'Pack Routine
Private Sub Packen_Click()
  Dim d As String
  Dim Text99 As String
  Dim b As String
  Command2.Enabled = False
  Command3.Enabled = False
  Command4.Enabled = False
  Text2.Text = ""
  If Len(Text1.Text) = 0 Then
    Call mnuFileOpen_Click
    If Text1.Text = "" Then
      Exit Sub
    End If
  End If
  b = ""
  ' Fragt die Option "Backup erhalten" ab
  If Check1(0) = 1 Then
    b = " -k"
  End If
  ' Fragt die Option "Packen erzwingen" ab
  If Check2(1) = 1 Then
    If b = "" Then
      b = " -"
    End If
    b = b + "f"
  End If
  If b = "" Then
    b = " -"
  End If
  b = b + Slider1Val
  Text2.Text = ""
  ' ErwOptionen wird im Modul frmOptions erstellt
  d = "files\upx.exe" + b + ErwOptionen + " " + Text1.Text
  Text2.Text = d
    ExecCmd (d)
  ' Letzte Datei merken an/aus ?
  If Check3 = 0 Then
     Text1.Text = ""
  End If
  Dim Test As String
  BakFile = Left(Lastfile, Len(Lastfile) - 1)
  BakFile = BakFile + Chr(126)
  If Right(BakFile, 3) = "EX~" Or Right(BakFile, 3) = "ex~" Or Right(BakFile, 3) = "CO~" Or Right(BakFile, 3) = "co~" Then
     Command2.Enabled = True
  End If
End Sub


'Schaltfläche: Scannen
Private Sub Scannen_Click()
On Error GoTo fehlt:

  If Len(Text1.Text) = 0 Then
    Call mnuFileOpen_Click
    If Text1.Text = "" Then
      Exit Sub
    End If
  End If

 Shell ("files\PEiD.exe" + " " + Text1.Text)
 Text2.Text = "files\PEiD.EXE " + Text1.Text
 Exit Sub
 
fehlt:
  If Text1.Text = "" Then
     Exit Sub
  End If
  MsgBox ("PE iDENTIFIER wurde nicht im Ordner: 'UPXGUI-Dir\files\' gefunden!"), vbCritical, "PE iDENTIFIER Fehler!"
  Text1.Text = ""
  
End Sub


'Schaltfläche: UPXFIX
Private Sub UPXFIX_Click()
  Dim Warnung As String
  
  Warnung = MsgBox(("Dieses Programm kann Ihre Dateien beschädigen!" & vbCrLf & "Möchten Sie es trotzdem starten?"), vbExclamation + vbYesNo, "Warnung!")
  If Warnung = vbNo Then GoTo ende
  
  Warnung = Shell("files\upxfix.exe", vbNormalFocus)
  
ende:

End Sub


'Schaltfläche: Info
Private Sub info_Click()
  frmAbout.Show
End Sub


Private Sub Text1_dblclick()
On Error GoTo mnuFileOpenIstLeer
  mnuFileOpen_Click
mnuFileOpenIstLeer:
End Sub


Private Sub ExecCmd(cmdline$)
  Dim proc As PROCESS_INFORMATION, Result&, bSuccess As Long
  Dim start As STARTUPINFO
  Dim sa As SECURITY_ATTRIBUTES, hReadPipe As Long, hWritePipe As Long
  Dim Buffer$, L&
  
    sa.nLength = Len(sa)
    sa.bInheritHandle = 1&
    sa.lpSecurityDescriptor = 0&
    Result = CreatePipe(hReadPipe, hWritePipe, sa, 0)

    If Result = 0 Then
      MsgBox "CreatePipe failed Error!"
      Exit Sub
    End If

    start.cb = Len(start)
    start.dwFlags = STARTF_USESTDHANDLES
    start.hStdOutput = hWritePipe


    Result = CreateProcessA(0&, cmdline$, sa, sa, 1&, _
                            NORMAL_PRIORITY_CLASS, 0&, _
                            0&, start, proc)

    If Result <> 1 Then
      MsgBox "CreateProcess failed!"
    Else
          
      Buffer = String(2000, Chr$(20))
      bSuccess = ReadFile(hReadPipe, Buffer, Len(Buffer), L, 0&)
      If bSuccess = 1 Then
        Text3.Text = Left(Buffer, L)
      Else
        MsgBox "ReadFile failed!"
      End If
    End If

    Call CloseHandle(proc.hProcess)
    Call CloseHandle(proc.hThread)
    Call CloseHandle(hReadPipe)
    Call CloseHandle(hWritePipe)
End Sub

