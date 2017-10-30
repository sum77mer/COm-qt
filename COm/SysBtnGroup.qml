import QtQuick 2.7

Row{
    id:sysbtngroup
    spacing:0

    signal feedback
    signal menu
    signal min
    signal close

    SysBtn{
        id:feedback
        picHover:"image/feedback_hover.png"
        picNormal: "image/feedback_normal.png"
        picPressed: "image/feedback_pressed.png"
        onClicked:
        {
            console.log("feedback btn clicked")
            sysbtngroup.feedback()
        }
    }
    SysBtn
    {
        id:menu
        picHover: "image/menu_hover.png"
        picNormal: "image/menu_normal.png"
        picPressed: "image/menu_pressed.png"
        onClicked:
        {
            console.log("menu btn clicked")
            sysbtngroup.menu()
        }
    }

    SysBtn
    {
        id:min
        picHover: "image/min_hover.png"
        picNormal: "image/min_normal.png"
        picPressed: "image/min_pressed.png"
        onClicked:
        {
            console.log("min btn clicked")
            sysbtngroup.min()
        }
    }

    SysBtn
    {
        id:close
        picHover: "image/close_hover.png"
        picNormal: "image/close_normal.png"
        picPressed: "image/close_pressed.png"
        onClicked:
        {
            console.log("close btn clicked")
            sysbtngroup.close()
        }
    }

}
