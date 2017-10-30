import QtQuick 2.7

Rectangle
{
    id: tabwidget
    color: "transparent"

    function currentChanged(curIndex)
    {
        content.currentChangedmain(curIndex)
    }

    Row
    {
        id: toolbar
        spacing: 12
        anchors.left: tabwidget.left
        anchors.leftMargin: 10
        property int current: 0
        onCurrentChanged:setCurrentToolBtn()

        function setCurrentToolBtn()
        {
            for(var i = 0; i < toolbar.children.length; i++)
            {
                toolbar.children[i].state = (toolbar.current == i ? 'checked' : 'leave')
            }
            tabwidget.currentChanged(toolbar.current)
        }

        Tabbtn
        {
            index:0
            state:"checked"
            picSrc: "image/hardawre.PNG"
            btnText:"硬件助手"
            onClicked:toolbar.current=btnIndex
        }
        Tabbtn
        {
            index:1
            picSrc: "image/software2.jpg"
            btnText:"软件助手"
            onClicked:toolbar.current=btnIndex
        }
        Tabbtn
        {
            index:2
            picSrc: "image/tabtest.jpg"
            btnText:"性能测试"
            onClicked:toolbar.current=btnIndex
        }
    }

    Rectangle
    {
        id:content
        width:tabwidget.width
        anchors.top: toolbar.bottom
        anchors.topMargin: 50
        height: 500
        color:"white"

        property int current: 0

        function currentChangedmain(curIndex)
        {
            content.children[curIndex].x=width
            content.children[curIndex].state='active'
            content.children[current].state='hide'
            current = curIndex
        }

        MainWidget
        {
            id:widget1
            state:"active"
            Content1
            {
            }
        }
        MainWidget
        {
            id:widget2
            Content2
            {
            }
        }
        MainWidget
        {
            id:widget3
            Content3
            {
            }
        }
    }
}
