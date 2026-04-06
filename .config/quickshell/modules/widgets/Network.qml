import Quickshell
import Quickshell.Widgets
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQml

Text {
  color: root.fontColor

  font {
    family: root.fontFamily
    pixelSize: root.fontSize
  }

  property int updateInterval: 5000
  property bool debug: false

  text: ""

  Process {
    id: netProc
    command: ["sh", "-c", "iwgetid | awk '{print $1}'"]
    stdout: SplitParser {
      onRead: data => {
        if (!data) return
        text = data
      }
    }
    Component.onCompleted: running = true
  }


  Timer {
    interval: 2000
    running: true
    repeat: true
    onTriggered: {
      netProc.running = true
    }
  }
}
