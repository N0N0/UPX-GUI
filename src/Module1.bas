Attribute VB_Name = "Module1"
'///////////////////////////////////////////////////////////////////////////
'///////////////////////////////////////////////////////////////////////////
'UPX-GUI 2002 v2.00, a Graphical User Interface for UPX.
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

'Bekanntmachung von Öffentlichen Variablen
Public FileInQuestion As String
Public ErwOptionen As String
Public Lastfile As String
Public BakFile As String
Public Slider1Val As String
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

'Bestimmen von frmMain.frm als Startsteite
Public fMainForm As frmMain


Sub Main()
  hWnd = FindWindow(vbNullString, "UPX-GUI 2002 v2.00 by -=pYRo=-")
  
  If hWnd = 0 Then
     FileInQuestion = Dir("FILES\UPX.EXE")

'Abfrage nach der Datei "upx.exe", wird bei der bearbeitung de-aktiviert und bei
'der Compilierung aktiviert.

       If FileInQuestion = "" Then
          UPXGUIclose = MsgBox("UPX.EXE wurde nicht gefunden! UPX-GUI wird beendet!", 0 + vbCritical, "Fehler!")
          Exit Sub
       End If
       FileInQuestion = ""
       Set fMainForm = New frmMain
       fMainForm.Show
  End If
End Sub

