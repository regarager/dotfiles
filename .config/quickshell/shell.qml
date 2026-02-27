//@ pragma UseQApplication

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import "modules/widgets"

PanelWindow {
  id: root

  property string fontFamily: "Maple Mono NF"
  property string fontColor: "#dcd7ba"
  property int fontSize: 14

  color: "transparent"

  implicitHeight: 28
  anchors.top: true
  anchors.left: true
  anchors.right: true

  // left
  RowLayout {
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    anchors.leftMargin: 8
    spacing: 8

    Workspaces {}
  }

  // center
  RowLayout {
    anchors.centerIn: parent
    anchors.verticalCenter: parent.verticalCenter
    spacing: 8

    Clock {}
  }

  // right
  RowLayout {
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.rightMargin: 8
    spacing: 8

    Tray {}
    Battery {}
  }
}
