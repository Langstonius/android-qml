import QtQuick 2.0
import QtSensors 5.0

Rectangle {
    id:sensor_array
    width: 100
    height: 62
    color:"Yellow"

    Text{
        id:sensorText
        anchors.centerIn: parent
        text:"Sensor Tests!"
    }

    Component.onCompleted: {
       // var types = Sensors.sensorTypes();
        //        sensorText.text = sensorText.text + " \n" +types.length+ "types of sensors."
        //        for (var s in types)
        //            sensorText.text.concat(types[s]+"\n")
    }

    Accelerometer{
        id:accelerometer

        active: true
        dataRate:20
        property double xAccel:reading.x
        property double yAccel:reading.y
        property double zAccel:reading.z
    }

    Rectangle{
        id:acceldata
        anchors.top: sensorText.bottom
        anchors.horizontalCenter: sensorText.horizontalCenter
        width: parent.width *.33
        color:"grey"
        height: childrenRect.height
        Column{
            height: 120
            width: parent.width
            id:outputSensor
            Text {
                id: xVal
                text:"X:"+accelerometer.xAccel
            }
            Text {
                id: yVal
                text:"Y:"+accelerometer.yAccel
            }
            Text{
                id:zVal
                text:"Z:"+accelerometer.zAccel
            }
        }


    }
}
