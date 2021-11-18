import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.3

Rectangle {
    id: window
    color: "#000000"
    border.color: "#00000000"
    border.width: 0

    Rectangle {
        id: header
        x: 0
        width: 390
        height: 64
        color: "#000000"
        border.color: "#00353535"
        border.width: 0
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0

        Text {
            id: clock
            x: 163
            y: 15
            color: "#ffffff"
            text: qsTr("14:13")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            maximumLineCount: 1
            textFormat: Text.AutoText
            anchors.horizontalCenter: parent.horizontalCenter
            font.weight: Font.Bold
        }

        Button {
            id: appMenu
            width: 48
            height: 48
            text: qsTr("Button")
            anchors.left: parent.left
            anchors.top: parent.top
            display: AbstractButton.IconOnly
            flat: true
            highlighted: false
            anchors.topMargin: 7
            anchors.leftMargin: 7

            Image {
                id: image
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.top: parent.top
                source: "images/appMenu.svg"
                anchors.leftMargin: 4
                anchors.topMargin: 4
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: battery
            x: 339
            y: 22
            width: 40
            height: 20
            color: "#000000"
            border.color: "#ffffff"
            border.width: 3

            ProgressBar {
                id: batteryIndicator
                anchors.fill: parent
                anchors.rightMargin: 7
                anchors.leftMargin: 7
                anchors.bottomMargin: 4
                anchors.topMargin: 4
                wheelEnabled: false
                smooth: false
                rotation: 0
                to: 100
                scale: 1
                value: 25
            }
        }

        Rectangle {
            id: headerSeparator
            height: 2
            color: "#3f3f3f"
            border.color: "#00000000"
            border.width: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }
    }

    Rectangle {
        id: footer
        x: 0
        width: 390
        height: 94
        color: "#000000"
        border.color: "#00000000"
        border.width: 0
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 0

        Row {
            id: recentApps
            anchors.fill: parent
            spacing: 29
            anchors.rightMargin: 27
            anchors.leftMargin: 27
            anchors.bottomMargin: 15
            anchors.topMargin: 17

            Button {
                id: recentSpotifyApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                flat: true
                focusPolicy: Qt.ClickFocus
                padding: 0
                rightPadding: 0
                leftPadding: 0
                bottomPadding: 0
                topPadding: 0
                display: AbstractButton.IconOnly

                Image {
                    id: image1
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/spotify.svg"
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: recentStravaApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image2
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/strava.svg"
                    sourceSize.height: 62
                    sourceSize.width: 62
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }
            }

            Button {
                id: recentGoogleMapsApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image3
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/google_maps.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    sourceSize.width: 62
                    sourceSize.height: 62
                    anchors.topMargin: 0
                }
            }

            Button {
                id: recentStorytelApp
                width: 62
                height: 62
                visible: true
                text: qsTr("Button")
                padding: 0
                topPadding: 0
                rightPadding: 0
                bottomPadding: 0
                leftPadding: 0
                focusPolicy: Qt.ClickFocus
                flat: true
                display: AbstractButton.IconOnly
                Image {
                    id: image4
                    x: 0
                    y: -6
                    width: 62
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "images/storytel.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.bottomMargin: 0
                    sourceSize.width: 62
                    sourceSize.height: 62
                    anchors.topMargin: 0
                }
            }
        }

        Rectangle {
            id: recentSeparator
            height: 2
            color: "#3f3f3f"
            border.color: "#00000000"
            border.width: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }

    Rectangle {
        id: main
        color: "#00000000"
        border.color: "#00000000"
        border.width: 0
        anchors.fill: parent
        anchors.bottomMargin: 94
        anchors.topMargin: 64

        Column {
            id: driveData
            anchors.fill: parent

            Rectangle {
                id: speedDisplay
                height: 185
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Text {
                    id: speed
                    x: 0
                    y: 185
                    width: 210
                    color: "#ffffff"
                    text: qsTr("27.8")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 90
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenterOffset: -10
                    font.styleName: "Bold"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: speedTitle
                    x: -5
                    y: 185
                    width: 210
                    height: 30
                    color: "#00afff"
                    text: qsTr("Speed")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.bottomMargin: 30
                    font.styleName: "Regular"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: speedUnits
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("Km/h")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenterOffset: -10
                    anchors.leftMargin: -2
                    font.styleName: "Regular"
                }

                Text {
                    id: speedAverage
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("21.5")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenterOffset: -10
                    anchors.rightMargin: 0
                    font.styleName: "Regular"
                }

                Text {
                    id: speedAverageLabel
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("avg.")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Regular"
                    anchors.verticalCenterOffset: 15
                    anchors.rightMargin: 0
                }

                Rectangle {
                    id: speedSeparator
                    x: 0
                    y: 684
                    height: 2
                    color: "#3f3f3f"
                    border.color: "#00000000"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 0
                }
            }

            Rectangle {
                id: distanceDisplay
                height: 185
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                Text {
                    id: distance
                    x: 0
                    y: 185
                    width: 210
                    color: "#ffffff"
                    text: qsTr("38.5")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 90
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Bold"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -10
                }

                Text {
                    id: distanceTitle
                    x: -5
                    y: 185
                    width: 210
                    height: 30
                    color: "#00afff"
                    text: qsTr("Distance")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.bottomMargin: 30
                    font.styleName: "Regular"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: distanceUnits
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("Km")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: -2
                    font.styleName: "Regular"
                    anchors.verticalCenterOffset: -10
                }

                Rectangle {
                    id: distanceSeparator
                    x: 0
                    y: 684
                    height: 2
                    color: "#3f3f3f"
                    border.color: "#00000000"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 0
                }
            }

            Rectangle {
                id: heartRateDisplay
                height: 185
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                Text {
                    id: heartRate
                    x: 0
                    y: 185
                    width: 210
                    color: "#ffffff"
                    text: qsTr("115")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 90
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Bold"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -10
                }

                Text {
                    id: heartRateTitle
                    x: -5
                    y: 185
                    width: 210
                    height: 30
                    color: "#00afff"
                    text: qsTr("Heart Rate")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.bottomMargin: 30
                    font.styleName: "Regular"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: heartRateUnits
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("Bpm")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: -2
                    font.styleName: "Regular"
                    anchors.verticalCenterOffset: -10
                }

                Text {
                    id: heartRateAverage
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("98")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Regular"
                    anchors.verticalCenterOffset: -10
                    anchors.rightMargin: 0
                }

                Text {
                    id: heartRateAverageLabel
                    y: 187
                    width: 90
                    height: 30
                    color: "#00afff"
                    text: qsTr("avg.")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Regular"
                    anchors.verticalCenterOffset: 15
                    anchors.rightMargin: 0
                }

                Rectangle {
                    id: heartRateSeparator
                    x: 0
                    y: 684
                    height: 2
                    color: "#3f3f3f"
                    border.color: "#00000000"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 0
                }
            }

            Rectangle {
                id: durationDisplay
                height: 131
                color: "#00000000"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                Text {
                    id: duration
                    x: 0
                    y: 185
                    width: 300
                    color: "#ffffff"
                    text: qsTr("01:24:15")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Bold"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -15
                }

                Text {
                    id: durationTitle
                    x: -5
                    y: 185
                    width: 300
                    height: 30
                    color: "#00afff"
                    text: qsTr("Duration")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.bottomMargin: 20
                    font.styleName: "Regular"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
