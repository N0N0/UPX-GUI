VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fester Dialog
   Caption         =   "Info UPXGUI"
   ClientHeight    =   4275
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4275
   ScaleWidth      =   4215
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'Fenstermitte
   Tag             =   "Info UPXGUI"
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   345
      Left            =   120
      TabIndex        =   0
      Tag             =   "OK"
      Top             =   3840
      Width           =   3975
   End
   Begin VB.Label Label12 
      Caption         =   "John F. Reiser"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   13
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Label Label11 
      Caption         =   "UPX ©2000-2007 by:"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label9 
      Caption         =   "UPXFIX-Team"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   11
      Top             =   3360
      Width           =   1935
   End
   Begin VB.Label Label8 
      Caption         =   "UPXFIX ©2002 by:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   3360
      Width           =   1815
   End
   Begin VB.Label Label7 
      Caption         =   "snaker, Qwerton && Jibz"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   9
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "PEiD ©2004-2005 by: "
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "Laszlo Molnar"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   7
      Top             =   1320
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Markus F. X. J.  Oberhumer"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   6
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label5 
      Caption         =   "-=pYRo=-"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   2160
      TabIndex        =   5
      Top             =   2160
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "UPX ©1996-2007 by:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "UPX-GUI ©2001-2007 by:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2160
      Width           =   1935
   End
   Begin VB.Label lblTitle 
      Caption         =   "UPX-GUI 2002"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Tag             =   "Anwendungstitel"
      Top             =   240
      Width           =   1095
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Innen ausgefüllt
      Index           =   1
      X1              =   -120
      X2              =   4080
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Label lblVersion 
      Caption         =   "Version 3.00"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Tag             =   "Version"
      Top             =   480
      Width           =   1815
   End
End
Attribute VB_Name = "frmAbout"
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

Option Explicit

Private Declare Function ShellExecute Lib "Shell32.dll" Alias _
        "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation _
        As String, ByVal lpFile As String, ByVal lpParameters _
        As String, ByVal lpDirectory As String, ByVal nShowCmd _
        As Long) As Long
        
Dim Result&, Buff$


Private Sub Label12_Click()
    Buff = "http://www.bitwagon.com/"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub

Private Sub Label5_Click()
    Buff = "mailto:" & "oryp-kallis@gmx.at"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub


Private Sub Label2_Click()
    Buff = "mailto:" & "markus@oberhumer.com"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub

Private Sub Label3_Click()
    Buff = "mailto:" & "ml1050@users.sourceforge.net"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub


Private Sub Label7_Click()
    Buff = "http://peid.has.it"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub


Private Sub Label9_Click()
    Buff = "mailto:" & "upxfix@yahoo.com"
    Result = ShellExecute(0&, "Open", Buff, "", "", 1)
End Sub


Private Sub cmdOK_Click()
        Unload Me
End Sub

