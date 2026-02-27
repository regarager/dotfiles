pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  readonly property string time: {
    Qt.formatDateTime(clock.date, "HH:mm yyyy-MM-dd")
  }

  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}
