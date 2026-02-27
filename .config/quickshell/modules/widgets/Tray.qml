import Quickshell.Services.SystemTray
import Quickshell.Widgets
import QtQuick.Layouts
import QtQuick
import QtQuick.Controls

Row {
  id: trayRow
  spacing: 8

  property real iconSize: 20

  Repeater {
    model: SystemTray.items.values

    Image {
      id: trayIcon
      width: iconSize
      height: iconSize
      source: modelData ? modelData.icon : ""
      fillMode: Image.PreserveAspectFit
      smooth: true
      cache: true
      asynchronous: true

      MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        acceptedButtons: Qt.RightButton
        hoverEnabled: true

        onClicked: function(mouse) {
          console.log("Tray icon clicked, button:", mouse.button)

          if (modelData && modelData.hasMenu) {
            // For SystemTray, contextMenu might already be a Menu object
            modelData.display(parent, 0, 0)
          } else {
            console.log("No context menu available")
          }
        }

        // Tooltip on hover
        ToolTip {
          visible: containsMouse && modelData && modelData.tooltip
          text: modelData && modelData.tooltip ? modelData.tooltip : ""
          delay: 1000
        }
      }
    }
  }
}
