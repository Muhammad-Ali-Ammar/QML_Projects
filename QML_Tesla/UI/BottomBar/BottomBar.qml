import QtQuick 2.15

Rectangle{
    id: bottomBar
    anchors{
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    height: parent.height/12  // dynamic height.. based on parent
    color: "black"

    Image{

        id:carIcon
        anchors{
            left: parent.left
            leftMargin: 30
        }

        fillMode: Image.PreserveAspectFit
        source: "qrc:/UI/assets/CarIcon.png"

    }

}
