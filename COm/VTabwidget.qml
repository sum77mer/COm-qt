import QtQuick 2.0

Item {
    id:vtabwidget
    width:parent.width
    height:parent.height
    //anchors.horizontalCenter:parent.horizontalCenter
    //function currentChanged(curIndex)
    //{
     //   content.currentChangedmain(curIndex)
   // }

    function setCurrentTabBtn()
    {
        for(var i = 0; i < vtab.children.length; i++)
        {
            vtab.children[i].state = (vtab.current == i ? 'checked' : 'leave')
        }
      //  tabwidget.currentChanged(vtab.current)
    }

    Column{
        id:vtab
        spacing:6
        anchors.top:parent.top
        anchors.topMargin: 5
        anchors.left:parent.left
        anchors.leftMargin: 5
        property int current: 0
        onCurrentChanged:setCurrentTabBtn()

        VTabbtn{
            //color:"red"
            index:0
            btnText:"综合信息"
            onClicked:vtab.current=btnIndex
        }
        VTabbtn{
            //color:"red"
            index:1
            btnText:"主板"
            onClicked:vtab.current=btnIndex

        }
        VTabbtn{
            //color:"red"
            index:2
            btnText:"CPU"
            onClicked:vtab.current=btnIndex
        }
        VTabbtn{
            //color:"red"
            index:3
            btnText:"内存"
            onClicked:vtab.current=btnIndex
        }
        VTabbtn{
            //color:"red"
            index:4
            btnText:"PCI"
            onClicked:vtab.current=btnIndex

        }
        VTabbtn{
            //color:"red"
            index:5
            btnText:"存储设备"
            onClicked:vtab.current=btnIndex
        }

    }

}
