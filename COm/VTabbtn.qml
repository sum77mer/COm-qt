import QtQuick 2.0

Rectangle{
    id:tabbtn
    width:50
    height:30
   // border.color:"black"
    color:"black"

    property alias btnText: label.text
    property alias btntextcolor:label.color
    property int index:0
    signal clicked(int btnIndex)
    //property color bkColor: "#00FFFFFF"

    Text
    {
        id: label
        color: "#ffffff"
        font.pointSize: 9
        font.family: "微软雅黑"
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.topMargin: 3
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
        onClicked:{
            console.log("vtabbtn is clicked")
        }
    }
    states:
    [
        State {
            name: "checked"
            PropertyChanges { target: tabbtn; color:"#ffffffff" ;btntextcolor:"black"}
        },
        State {
            name: "hover"
            PropertyChanges { target: tabbtn; color:"#FF909090";btntextcolor:"white" }
        },
        State {
            name: "leave"
            PropertyChanges { target: tabbtn; color:"black";btntextcolor:"white" }
        }
    ]
    transitions:
    [
        Transition
        {
            PropertyAnimation
            {
                property:"tabbtn.color"
                easing.type: Easing.Linear
                duration: 200
            }
        }
    ]
}

