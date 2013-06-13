import QtQuick 2.0
import QtGraphicalEffects 1.0


Rectangle {
    id:effectsPage
   anchors.fill: parent
   color: "green"
   Text {
       id: pagelabel
       text: qsTr("Qml Shader Effects not implemented as of yet!")
       anchors.centerIn: parent
       visible:false
   }
   DropShadow{
       anchors.fill: pagelabel
       horizontalOffset: 3
       verticalOffset: 3
       smooth: true
       source: pagelabel
   }

   Item {
       width: 300
       height: 300
        anchors.top:pagelabel.bottom
       ConicalGradient {
           anchors.fill: parent
           angle: 0.0
           gradient: Gradient {
               GradientStop { position: 0.0; color: "white" }
               GradientStop { position: 1.0; color: "black" }
           }
       }
   }
}
