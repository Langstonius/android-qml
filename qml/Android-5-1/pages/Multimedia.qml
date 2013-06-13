import QtQuick 2.0


Rectangle {
    anchors.fill: parent
    color: "black"
    VideoOutput{
        anchors.fill: parent
        source:mediaPlayer
        MouseArea{
            anchors.fill: parent
            onPressed:{ mediaPlayer.mediaPlaying = false; mediaPlayer.stop()}
        }
    }

    Text {
        id: name
        text: qsTr("Multimedia")
        anchors.centerIn: parent
        font.pixelSize: 18
        color: "white"
    }

    Row{
        anchors.top:name.bottom
        height:50
        width: parent.width*.75
        spacing:50
        Rectangle{
            id:audioTest
            height: parent.height
            width: 60
            color: "grey"
            property bool mediaPlaying:false
            Text {
                id: audiobtn
                text:mediaPlayer.mediaPlaying ? qsTr("Audio Off") : qsTr("Audio On")
                anchors.centerIn: parent
                color: "black"
                font.pixelSize: 12
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    if(mediaPlayer.mediaPlaying){
                        mediaPlayer.stop()
                    }else
                    {
                        mediaPlayer.source="http://fr3.ah.fm:9000"
                        mediaPlayer.play()
                    }
                    mediaPlayer.mediaPlaying  = !mediaPlayer.mediaPlaying

                }
            }
        }

        Rectangle{
            id:videoTest
            height: parent.height
            width: 60
            color: "grey"
            property bool mediaPlaying:false
            Text {
                id: videobtn
                text:mediaPlayer.mediaPlaying ? qsTr("Video Off") : qsTr("Video On")
                anchors.centerIn: parent
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    if(mediaPlayer.mediaPlaying){
                        mediaPlayer.stop()
                    }else
                    {
                        mediaPlayer.source=Qt.resolvedUrl("/sdcard/testmedia.avi")
                        console.log(mediaPlayer.source)
                        mediaPlayer.play()
                    }
                    mediaPlayer.mediaPlaying  = !mediaPlayer.mediaPlaying

                }
            }
        }
    }

    MediaPlayer{
        id:mediaPlayer
        property bool mediaPlaying:false

        autoPlay: false
    }



}
