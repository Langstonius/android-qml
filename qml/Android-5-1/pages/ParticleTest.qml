import QtQuick 2.0
import QtQuick.Particles 2.0
Rectangle {
    width: 100
    height: 62
    color:"purple"
    Text {
        id: particleLabel
        text: qsTr("Particles")
        font.pixelSize: 18
        anchors.centerIn: parent
    }
}
