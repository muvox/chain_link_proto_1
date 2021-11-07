import QtQuick 2.0

Item {
    ListView {
        id: listView
        width: parent.width
        clip: true
        flickableDirection: Flickable.HorizontalAndVerticalFlick
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: resultText.bottom
        anchors.topMargin: 30
        anchors.bottom: parent.bottom

        model: musiclist
        delegate: Rectangle {
            height: 25
            width: ListView.view.width
            color: index % 2 == 0 ? "#EDEDED" : "#FFFFFF"

            function toTimeFormat(sec_num) {
                sec_num = Math.floor(sec_num / 1000);
                var hours   = Math.floor(sec_num / 3600);
                var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
                var seconds = sec_num - (hours * 3600) - (minutes * 60);

                if (hours < 10) { hours = "0" + hours; }
                if (minutes < 10) { minutes = "0" + minutes; }
                if (seconds < 10) { seconds = "0" + seconds; }

                return hours+':'+minutes+':'+seconds;
            }

            Text { text: model.modelData.title + " | " + model.modelData.artist + " | " + toTimeFormat(model.modelData.duration) }
        }
    }
}
