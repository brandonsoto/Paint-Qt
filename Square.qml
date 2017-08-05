import QtQuick 2.0

Rectangle {
    id: root

    property bool active: false
    signal clicked

    width: 100
    height: width

    focus: true
    scale: active ? .85 : 1
    border.color: active ? Qt.darker(color,1.2) : Qt.lighter(color, 1.2)
    border.width: active ? 7 : 4

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }

    Behavior on scale {
        NumberAnimation { duration: 50 }
    }
}
