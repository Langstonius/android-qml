import QtQuick 2.0

Rectangle {
 anchors.fill: parent
 color:"skyblue"
 Text {
     id:hdrLabel
     text: qsTr("Qt 5.1.0 Android Test App")
     anchors.top:parent.top
     anchors.horizontalCenter: parent.horizontalCenter
 }

 Text{
     id:sizelabel
     text: "Height is "+root.height+". Width is "+root.width+". "
     anchors.centerIn: root
 }
}
