pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  /* Dev colors */
  property string _base00 : "f5f0e7" 
  property string _base01 : "e7e2d9" 
  property string _base02 : "d8d4cb" 
  property string _base03 : "73777f" 
  property string _base04 : "5a5f66" 
  property string _base05 : "43474e" 
  property string _base06 : "2c3138" 
  property string _base07 : "181c22" 
  property string _base08 : "d02023" 
  property string _base09 : "bf3e05" 
  property string _base0A : "9d6f00" 
  property string _base0B : "637200" 
  property string _base0C : "007a72" 
  property string _base0D : "0073b5" 
  property string _base0E : "4e66b6" 
  property string _base0F : "c42775"


  property color base00 : "#" + _base00
  property color base01 : "#" + _base01
  property color base02 : "#" + _base02 
  property color base03 : "#" + _base03
  property color base04 : "#" + _base04
  property color base05 : "#" + _base05
  property color base06 : "#" + _base06
  property color base07 : "#" + _base07
  property color base08 : "#" + _base08
  property color base09 : "#" + _base09
  property color base0A : "#" + _base0A
  property color base0B : "#" + _base0B
  property color base0C : "#" + _base0C
  property color base0D : "#" + _base0D
  property color base0E : "#" + _base0E
  property color base0F : "#" + _base0F

  property string fontFamily: "Terminess Nerd Font"
  property int fontSize: 20
  property int borderWidth: 3
}
