import QtQuick
import QtQuick.Shapes

Item {
  id: container

  property list<bool> showBorder: [
    //top, right, bottom, left
    true, true, true, true
  ]

  property int bevel: 0
  property list<int> bevels: [
    // top-right, top-left, bottom-right, bottom-left
    (bevel > 0 ? (showBorder[0] && showBorder[1] ? bevel : 0): 0),
    (bevel > 0 ? (showBorder[0] && showBorder[3] ? bevel: 0): 0),
    (bevel > 0 ? (showBorder[2] && showBorder[1] ? bevel : 0): 0),
    (bevel > 0 ? (showBorder[2] && showBorder[3] ? bevel : 0): 0)
  ]

  property int margin: 0
  property list<int> margins: [
    // top-bottom, right-left
    (margin > 0 ? margin: 10), (margin > 0 ? margin : 20)
  ]
  property int borderWidth: 3
  property color borderColour: "#000000";
  property color backgroundColour: "#ffffff";

  implicitHeight: childrenRect.height + margins[0]
  implicitWidth: childrenRect.width + margins[1]

  Shape {
    height: childrenRect.height
    width: childrenRect.width
 
    // Background
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: container.backgroundColour
      joinStyle: ShapePath.MiterJoin

      startX: 0; startY: container.bevels[1]
      PathLine { x: 0; y: container.height - container.bevels[3]}
      PathLine { x: container.bevels[3]; y: container.height}
      PathLine { x: container.width - container.bevels[2]; y: container.height}
      PathLine { x: container.width; y: container.height - container.bevels[2]}
      PathLine { x: container.width; y: container.bevels[0]}
      PathLine { x: container.width - container.bevels[0]; y: 0}
      PathLine { x: container.bevels[1]; y: 0}
      PathLine { x: 0; y: container.bevels[1]}
    }

    // Top
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[0] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: container.bevels[1] + (showBorder[3] ? borderWidth : borderWidth/2); startY: 0
      PathLine { x: container.width - container.bevels[0] - (borderWidth/2); y: 0}
    }

    // Left
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[3] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: 0; startY: container.bevels[1] + borderWidth/2
      PathLine { x: 0; y: container.height - container.bevels[3] - borderWidth/2}
    }

    // Bottom
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[2] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: container.bevels[3] + borderWidth/2; startY: container.height
      PathLine { x: container.width - container.bevels[2] - borderWidth/2; y: container.height }
    }
    
    // Right
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[1] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: container.width; startY: container.bevels[0] + borderWidth/2
      PathLine { x: container.width; y: container.height - bevels[2] - borderWidth/2 }
    }

    // TopLeft
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[3] && showBorder[0] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: 0; startY: bevels[1] + 1
      PathLine { x: 0; y: bevels[1] }
      PathLine { x: container.bevels[1]; y: 0}
      PathLine { x: container.bevels[1] + 1; y: 0 }
    }

    // TopRight
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[1] && showBorder[0] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: container.width - bevels[0] - 1; startY: 0
      PathLine { x: container.width - bevels[0]; y: 0}
      PathLine { x: container.width; y: bevels[0]}
      PathLine { x: container.width; y: bevels[0] + 1 }
    }

    // BottomLeft
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[3] && showBorder[2] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: 0; startY: container.height - bevels[3] - 1
      PathLine { x: 0; y: container.height - bevels[3] }
      PathLine { x: container.bevels[3]; y: container.height }
      PathLine { x: container.bevels[3] + 1; y: container.height }
    }

    // BottomRight
    ShapePath {
      strokeWidth: container.borderWidth
      strokeColor: showBorder[2] && showBorder[1] ? container.borderColour : "transparent"
      strokeStyle: ShapePath.Solid
      fillColor: "transparent"
      joinStyle: ShapePath.MiterJoin

      startX: container.width - bevels[2] - 1; startY: container.height
      PathLine { x: container.width - bevels[2]; y: container.height }
      PathLine { x: container.width; y: container.height - bevels[2] }
      PathLine { x: container.width; y: container.height - bevels[2] - 1 }
    }
  }
}
