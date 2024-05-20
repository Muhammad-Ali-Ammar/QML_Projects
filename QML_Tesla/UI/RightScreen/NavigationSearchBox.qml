import QtQuick 2.15

Rectangle{
    id: id_NavigationBox
    color: "#f0f0f0"
    radius: 5
    anchors{
    }


    Image{
        id:id_SearchIcon
        anchors{

            left: parent.left
            leftMargin: 10
            verticalCenter: parent.verticalCenter
        }

        height: parent.height*.45
        fillMode: Image.PreserveAspectFit
        source: "qrc:/UI/assets/search.png";


    }
    Text{
        id: id_NavigationText
        anchors{
            verticalCenter: parent.verticalCenter
            left: id_SearchIcon.right
            leftMargin: 10
        }
        font.pixelSize: 15
        font.bold: true
        color: "#6b6b6b"

        text: "navigate"
        visible: id_NavigationTextInput.text ===""
    }

     TextInput{
        id: id_NavigationTextInput
        anchors{
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: id_SearchIcon.right
            leftMargin: 5
        }
        font.pixelSize: 16
        font.bold: true
        color: "black"
        verticalAlignment: Text.AlignVCenter
    }


}
