import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import QtQuick.Controls

RowLayout {
  anchors.fill: parent

  Repeater {
    model: Hyprland.workspaces.values

    Text {
      leftPadding: 10
      rightPadding: 10
      topPadding: 4
      bottomPadding: 4
      property bool isActive: Hyprland.focusedWorkspace?.id === (modelData.id)

      text: index + 1
      color: root.fontColor

      font {
        family: root.fontFamily
        pixelSize: root.fontSize
        bold: isActive
      }

      MouseArea {
        anchors.fill: parent
        onClicked: Hyprland.dispatch("workspace " + modelData.id)
      }


      Rectangle {
        id: borderBottom
        width: parent.width
        height: isActive ? 2 : 0
        anchors.bottom: parent.bottom
        color: root.fontColor
      }
    }
  }
}
