import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
//import com.myself 1.0
import com.music 1.0
import "components"

Window {
    id: root
    visible: true
    visibility: Window.Maximized
    property int speedValue :0
    Screen01{

    }

}

//Window {
//    id: root
//    visible: true
//    visibility: Window.Maximized
//    property int speedValue :0

    // Column layout to arrange components
//    ColumnLayout {
//        id: columnLay
//        width: root.width / 1.15
//        height: root.height / 1.15

//        // anchors set
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        // Speedometer
//        CircularSlider {
//            id: sldier2
//            value: root.speedValue
//            onValueChanged: root.speedValue = value
//            width: 300
//            height: 300
//            startAngle: 40
//            endAngle: 320
//            rotation: 180
//            trackWidth: 5
//            progressWidth: 20
//            minValue: 0
//            maxValue: 120
//            progressColor: "#50FA7B"
//            capStyle: Qt.FlatCap
//            // Speedometer needle
//            handle: Rectangle {
//                transform: Translate {
//                    x: (sldier2.handleWidth - width) / 2
//                    y: sldier2.handleHeight / 2
//                }

//                width: 10
//                height: sldier2.height / 2
//                color: "#FFac89"
//                radius: width / 2
//                antialiasing: true
//            }
//            // Text display for the speed
//            Label {
//                anchors.centerIn: sldier2
//                anchors.verticalCenterOffset: -40
//                rotation: 180
//                font.pointSize: 26
//                color: "#000000"
//                text: Number(sldier2.value).toFixed()+"km/h"
//            }
//        }
//        // Simple button to increase speed
//        Button {
//            Layout.fillWidth: true
//            height: root.width * 0.25
//            text: "Faster!"
//            onClicked: {
//                root.speedValue += 10
//            }

//        }
//        // Simple button to decrease speed
//        Button {
//            Layout.fillWidth: true
//            height: root.width * 0.25
//            text: "Slower!"
//            onClicked: {
//                root.speedValue -= 10
//            }

//        }
////        IntentHandler {
////            id: myObject
////        }

//        MusicManager {
//            id: musMan
//        }

////        Button {
////            Layout.fillWidth: true
////            height: root.width * 0.25
////            text: "Settings Intent"
////            onClicked: {
////                myObject.goToSettings()
////            }

////        }
//        Button {
//            Layout.fillWidth: true
//            height: root.width * 0.25
//            text: "music previous"
//            onClicked: {
//                musMan.previous()
//            }

//        }
//        Button {
//            Layout.fillWidth: true
//            height: root.width * 0.25
//            text: "music next"
//            onClicked: {
//                musMan.next()
//            }

//        }
//        Button {
//            Layout.fillWidth: true
//            height: root.width * 0.25
//            text: "Music play/pause"
//            onClicked: {
//                musMan.pause()
//            }

//        }

//    }
//}
