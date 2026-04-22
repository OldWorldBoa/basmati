import Quickshell
import QtQuick
import QtQuick.Layouts

RowLayout {
  property var bvHeight: 60
  property var bvWidth: 80
  property var bvBorderWidth: 5
  property var bvBevel: 10

  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}

  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvRight: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvTop: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvBottom: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvBottom: false
    bvRight: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvRight: false
    bvTop: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false
    bvTop: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false
    bvBottom: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false
    bvBottom: false
    bvRight: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvBottom: false
    bvRight: false
    bvTop: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false
    bvRight: false
    bvTop: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }

  Rectangle { width: bvBorderWidth; height: 16; color: "transparent"}
  BevelBox {
    height: bvHeight
    width: bvWidth
    borderWidth: bvBorderWidth
    bevel: bvBevel
    bvLeft: false
    bvTop: false
    bvBottom: false

    Text {
      anchors.centerIn: parent
      text: "Hello"
    }
  }
}
