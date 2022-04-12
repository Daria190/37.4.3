import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {
    width: 240
    height: 680
    visible: true
    title: qsTr("remote")
    property int numberChannel: 0
    Button {
        id: theFirst
        text: "1"
        font.pointSize: 14
        anchors.right: theSecond.left
        anchors.rightMargin: 5
        anchors.topMargin: 5
        width: 75
        height: 75
        property int num: 1
        onClicked: {numberChannel = num}
    }
    Button {
        id: theSecond
        text: "2"
        font.pointSize: 14
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 5
        width: 75
        height: 75
        property int num: 2
        onClicked: {numberChannel = num}
    }
    Button {
        id: theThird
        text: "3"
        font.pointSize: 14
        anchors.left: theSecond.right
        anchors.leftMargin: 5
        anchors.topMargin: 5
        width: 75
        height: 75
        property int num: 3
        onClicked: {numberChannel = num}
    }
    Button {
        id: theFourth
        text: "4"
        font.pointSize: 14
        anchors.top: theFirst.bottom
        anchors.topMargin: 5
        anchors.right: theFifth.left
        anchors.rightMargin: 5
        width: 75
        height: 75
        property int num: 4
        onClicked: {numberChannel = num}
    }
    Button {
        id: theFifth
        text: "5"
        font.pointSize: 14
        anchors.top: theSecond.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        width: 75
        height: 75
        property int num: 5
        onClicked: {numberChannel = num}
    }
    Button {
        id: theSixth
        text: "6"
        font.pointSize: 14
        anchors.top: theThird.bottom
        anchors.topMargin: 5
        anchors.left: theFifth.right
        anchors.leftMargin: 5
        width: 75
        height: 75
        property int num: 6
        onClicked: {numberChannel = num}
    }
    Button {
        id: theSeventh
        text: "7"
        font.pointSize: 14
        anchors.top: theFourth.bottom
        anchors.topMargin: 5
        anchors.right: theEighth.left
        anchors.rightMargin: 5
        width: 75
        height: 75
        property int num: 7
        onClicked: {numberChannel = num}
    }
    Button {
        id: theEighth
        text: "8"
        font.pointSize: 14
        anchors.top: theFifth.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        width: 75
        height: 75
        property int num: 8
        onClicked: {numberChannel = num}
    }
    Button {
        id: theNinth
        text: "9"
        font.pointSize: 14
        anchors.top: theSixth.bottom
        anchors.topMargin: 5
        anchors.left: theEighth.right
        anchors.leftMargin: 5
        width: 75
        height: 75
        property int num: 9
        onClicked: {numberChannel = num}
    }
    Button {
        id: zero
        text: "0"
        font.pointSize: 14
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: theEighth.bottom
        anchors.topMargin: 5
        width: 75
        height: 75
        property int num: 0
        onClicked: {numberChannel = num}
    }
    Button {
        id: next
        text: "Next"
        font.pointSize: 14
        anchors.left: zero.right
        anchors.leftMargin: 5
        anchors.top: theNinth.bottom
        anchors.topMargin: 5
        width: 75
        height: 75
        onClicked: {
            numberChannel++;
        }
    }
    Button {
        id: prev
        text: "Prev"
        font.pointSize: 14
        anchors.right: zero.left
        anchors.rightMargin: 5
        anchors.top: theSeventh.bottom
        anchors.topMargin: 5
        width: 75
        height: 75
        onClicked: {
            numberChannel--;

        }
    }
    property int percent: 0
    Button {
        id: turnUp
        text: "+"
        font.pointSize: 14
        anchors.right: next.right
        anchors.top: next.bottom
        anchors.topMargin: 5
        width: 115
        height: 75
        onClicked: {
            volume.value += 10;
            percent = volume.value;
        }
    }
    Button {
        id: turnDown
        text: "-"
        font.pointSize: 14
        anchors.left: prev.left
        anchors.top: prev.bottom
        anchors.topMargin: 5
        width: 115
        height: 75
        onClicked: {
            volume.value -= 10;
            percent = volume.value;
        }
    }
    ProgressBar {
        id: volume
        width: 230
        anchors.top: turnDown.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        from: 0
        to: 100
        value: from
        visible: false
    }
    ProgressBar {
        id: remoteChannel
        width: 230
        anchors.top: volume.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        from: 0
        to: 9
        value: numberChannel
        visible: false
    }
    Text {
        id: channel
        anchors.horizontalCenter: parent.horizonlalCenter
        anchors.bottom: volumePercent.top
        anchors.bottomMargin: 5
        anchors.left: remoteChannel.left
        text: "Channel:" + numberChannel
        font.pointSize: 14
    }
    Text {
        id: volumePercent
        anchors.horizontalCenter: parent.horizonlalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: remoteChannel.left
        text: "Volume: " + percent + "%"
        font.pointSize: 14
    }
}
