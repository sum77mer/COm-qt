import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id:page2_content
    width:parent.width
    height:parent.height
   // color:"black"
    Button{
        id:addrow
        anchors.horizontalCenter:parent.horizontalCenter
        text:"Add"
        onClicked: libraryModel.append({"title":"a","author":"b"})
    }
    Button{
        id:removerow
        text:"Remove"
        anchors.top:addrow.top+30
        anchors.left:addrow.right+10
        onClicked: libraryModel.remove(0)
    }
    ListModel {
        id: libraryModel
        ListElement {
            title: "A Masterpiece"
            author: "Gabriel"
        }
        ListElement {
            title: "Brilliance"
            author: "Jens"
        }
        ListElement {
            title: "Outstanding"
            author: "Frederik"
        }
    }

    TableView {
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.bottom: parent.bottom
        TableViewColumn {
            role: "title"
            title: "Title"
            width: 100
        }
        TableViewColumn {
            role: "author"
            title: "Author"
            width: 200
        }
        model: libraryModel
    }
}
