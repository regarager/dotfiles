import Quickshell.Services.UPower
import QtQuick

import "../services"

Rectangle {
  property real percentage: parseInt(UPower.displayDevice.percentage * 100)
  property bool discharging: UPower.onBattery

  width: 32
  height: 16
  radius: 4

  anchors.verticalCenter: parent.verticalCenter

  border {
    color: "white"
    width: 1.5
  }

  color: "transparent"

  Rectangle {
    height: parent.height
    width: (parent.width - 4) * percentage / 100
    color: "white"

    anchors {
      left: parent.left
      top: parent.top
      bottom: parent.bottom      
      margins: 4
      verticalCenter: parent.verticalCenter
    }
  }

  Timer {
    interval: 5000
    running: true
    repeat: true
    onTriggered: {
      percentage = parseInt(UPower.displayDevice.percentage * 100)
      discharging = UPower.onBattery
    }
  }
}
