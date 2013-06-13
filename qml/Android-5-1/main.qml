import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    height: parent.height
    width:parent.width
    id:root
    color: "skyblue"


    Loader{
        id:pageContent
        anchors.top: parent.top
        height: root.height - footerbar.height
        width: root.width
        source:"pages/Home.qml"

    }

    Rectangle{
        id:footerbar
        width:root.width
        height: root.height*.15
        anchors.bottom: parent.bottom
        color: "white"

        ListView{
            id:pagesListView
            height: footerbar.height
            width: footerbar.width - exitLabel.width
            model:pagesList
            anchors.left: footerbar.left
            anchors.verticalCenter: footerbar.verticalCenter
            orientation:ListView.Horizontal
            delegate: Rectangle{
                height: footerbar.height
                width: footerbar.width*.15
                Text {
                    text: page
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: pageContent.source="pages/"+url
                }
            }

        }

        Text {
            id: exitLabel
            text: qsTr("Exit")
          anchors.verticalCenter: parent.verticalCenter
           anchors.right: footerbar.right
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.quit();
                }
            }

        }

    }

    ListModel{
        id:pagesList

        ListElement{
            page:"Home"
            url:"Home.qml"
        }
        ListElement{
            page:"Effects"
            url:"Effects.qml"
        }
        ListElement{
            page:"Sensors"
            url:"SensorTests.qml"
        }
        ListElement{
            page:"Multimedia"
            url:"Multimedia.qml"
        }
        ListElement{
            page:"Particles"
            url:"ParticleTest.qml"
        }
    }


}
