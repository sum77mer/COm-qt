import QtQuick 2.0

Rectangle{
    id:tabbtn
    width:50
    height:50
    gradient: on

    property alias picSrc: pic.source
    property alias btnText: label.text
    property int index:0
    signal clicked(int btnIndex)
    property color bkColor: "#00FFFFFF"

    Gradient
    {
        id:on
        GradientStop { position: 0.0; color: "#00FFFFFF" }
        GradientStop { position: 1.0; color: bkColor }
    }

    Image{
        id:pic
        width:40
        height:40
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text
    {
        id: label
        color: "#ffffff"
        font.pointSize: 9
        font.family: "微软雅黑"
        anchors.horizontalCenter: pic.horizontalCenter
        anchors.top: pic.bottom
        anchors.topMargin: 3
     }

    MouseArea
    {
        hoverEnabled: true
        anchors.fill: parent
        onEntered:tabbtn.state == 'checked' ? tabbtn.state = 'checked' : tabbtn.state = 'hover'
        onExited:tabbtn.state == 'checked' ? tabbtn.state = 'checked' : tabbtn.state = 'leave'
        onPressed:
        {
            tabbtn.state = 'checked'
            tabbtn.clicked(tabbtn.index)
        }
    }

    states:
    [
        State {
            name: "checked"
            PropertyChanges { target: tabbtn; bkColor:"#77FFFFFF" }
        },

        State {
            name: "hover"
            PropertyChanges { target: tabbtn; bkColor:"#77FFFFFF" }
        },

        State {
            name: "leave"
            PropertyChanges { target: tabbtn; bkColor:"#00FFFFFF" }
        }
    ]

    transitions:
    [
        Transition
        {
            PropertyAnimation
            {
                property:"bkColor"
                easing.type: Easing.Linear
                duration: 200
            }
        }
    ]
}
