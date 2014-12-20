VERSION 5.00
Begin VB.Form frmOptions 
   BorderStyle     =   3  'Fester Dialog
   Caption         =   "Erweiterte Einstellungen"
   ClientHeight    =   2730
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4575
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   4575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.OptionButton Option2 
      Caption         =   "Option2"
      Height          =   255
      Left            =   2880
      TabIndex        =   13
      Top             =   1440
      Value           =   -1  'True
      Width           =   255
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   255
      Left            =   2400
      TabIndex        =   12
      Top             =   1440
      Width           =   255
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Check4"
      Height          =   255
      Left            =   1920
      TabIndex        =   10
      Top             =   1800
      Value           =   1  'Aktiviert
      Width           =   255
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Check3"
      Height          =   255
      Left            =   1920
      TabIndex        =   8
      Top             =   1080
      Value           =   1  'Aktiviert
      Width           =   255
   End
   Begin VB.Frame Frame1 
      Caption         =   "Hinweis"
      Height          =   855
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   4575
      Begin VB.Label Label1 
         Caption         =   "Diese Einstellungen sollten nur von erfahrenen Anwendern geändert werden!"
         Height          =   495
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   4215
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Abbrechen"
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   2280
      Width           =   975
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Value           =   1  'Aktiviert
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Value           =   1  'Aktiviert
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "1        2"
      Height          =   255
      Left            =   2280
      TabIndex        =   14
      Top             =   1440
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "Icons Comprimieren"
      Height          =   255
      Left            =   2280
      TabIndex        =   11
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "Strip Relocations"
      Height          =   255
      Left            =   2280
      TabIndex        =   9
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Ressourcen komprimieren"
      Height          =   375
      Left            =   480
      TabIndex        =   7
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Exports komprimieren"
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   1080
      Width           =   1215
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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

Private Sub Check3_Click()
  check3erg = ""
  If Check3 = 0 Then
    Option1.Enabled = False
    Option2.Enabled = False
    Exit Sub
  End If
  If Check3 = 1 Then
    Option1.Enabled = True
    Option2.Enabled = True
    If Option1 = False Then
      check3erg = ""
    End If
    If Option1 = True Then
      check3erg = " --compress-icons=1"
  End If
  End If
End Sub

Private Sub Command1_Click()
  Erweitert = ""
  
  If Check1 = 0 Then
    Erweitert = " --compress-exports=0"
  End If
  
  If Check2 = 0 Then
    Erweitert = Erweitert + " --compress-resources=0"
  End If
  
  If Check4 = 0 Then
    Erweitert = Erweitert + " --strip-relocs=0"
  End If

  check3erg = " --compress-icons=0"
  
  If Check3 = 1 Then
    If Option1 = True Then
       check3erg = " --compress-icons=1"
    End If
    If Option1 = False Then
       check3erg = ""
    End If
  End If
  
  Erweitert = Erweitert + check3erg
  ErwOptionen = Erweitert
  Unload frmOptions
  
End Sub

Private Sub Command2_Click()
 ErwOptionen = Erweitert
 Unload frmOptions
End Sub


Private Sub Option1_Click()
  If Option1 = True Then
    Option2 = False
  End If
End Sub

Private Sub Option2_Click()
  If Option2 = True Then
    Option1 = False
  End If
End Sub
