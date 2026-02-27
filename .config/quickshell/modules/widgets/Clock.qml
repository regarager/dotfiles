import QtQuick

import "../services"

Text {
  color: root.fontColor
  text: TimeService.time

  font {
    family: root.fontFamily
    pixelSize: root.fontSize
  }
}
