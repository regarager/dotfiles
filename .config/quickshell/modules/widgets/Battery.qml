import Quickshell.Services.UPower
import QtQuick

import "../services"

Text {
  property real percentage: parseInt(UPower.displayDevice.percentage * 100)
  property bool discharging: UPower.onBattery

  color: root.fontColor

  text: (discharging ? "" : "+") + percentage + "%"

  font {
    family: root.fontFamily
    pixelSize: root.fontSize
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
