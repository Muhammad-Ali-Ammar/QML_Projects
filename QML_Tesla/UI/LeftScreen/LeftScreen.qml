import QtQuick 2.15

Rectangle{
    id: leftSCreen
    anchors{
        left: parent.left
        top:  parent.top
        bottom: bottomBar.bottom
    }
    width: parent.width *(1/3)

    Image{
        id:carRender
        anchors.centerIn: parent
        width: parent.width
        fillMode: Image.PreserveAspectFit
        source: "/UI/assets/CarRender.jpg"
    }

}
