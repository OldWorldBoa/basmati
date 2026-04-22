pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root
  property string time: Qt.formatDateTime(clock.date, "ddd, MM dd - HH:mm:ss")

  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}
