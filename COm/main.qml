import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
//import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id:window
    visible: true
    width: 900
    height: 700
    title: qsTr("Hello World")
    flags: "FramelessWindowHint|Window"
    Image{
        id:backgnd
        width: parent.width
        height: parent.height
        source:"image/background.jpg"
        Text{
            id:title
            x:10
            y:10
            width:125
            height:12
            color:"#ffffff"
            text:"SV助手"
            font.family:"微软雅黑"
            font.pixelSize:12
        }
        MouseArea{
            anchors.fill:parent
            property variant previousPosition
            onPressed:{
                previousPosition=Qt.point(mouse.x,mouse.y)
            }
            onPositionChanged:{
                if(pressedButtons==Qt.LeftButton){
                    var dx=mouse.x-previousPosition.x
                    var dy=mouse.y-previousPosition.y
                    window.x=window.x+dx;
                    window.y=window.y+dy;
                }
            }
        }
        TabWidget{
            id: mainwindow
            x: 0;
            y: 40;
            width:900
            height:600
        }
        Image{
            id: logo
            x: 700
            y: 40
            width:200
            height:92
            source: "image/logo.PNG"
        }      
        SysBtnGroup{
            id: sysbtngrp
            x: 755
            y: 0

            onMin: window.showMinimized()
            onClose: window.close()
        }
    }
}
