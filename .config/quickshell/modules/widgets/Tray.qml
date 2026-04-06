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
    }
  }
}
