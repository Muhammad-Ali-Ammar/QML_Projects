import QtQuick 2.15
import QtLocation 6.7
import QtPositioning 6.7

Rectangle{
    id: rightScreen
    anchors{
        right: parent.right
        top:  parent.top
        bottom: bottomBar.bottom
    }
    width: parent.width *(2/3)



    Plugin {
            id: mapPlugin
            name: "osm"   // open source map
        }
    Map {
          id: map
          anchors.fill: parent
          plugin: mapPlugin
          center: QtPositioning.coordinate(30.0444,  31.2357) // Oslo
          zoomLevel: 14
          property geoCoordinate startCentroid


          DragHandler {
              id: drag
              target: null
              onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
          }
          Shortcut {
              enabled: map.zoomLevel < map.maximumZoomLevel
              sequence: StandardKey.ZoomIn
              onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
          }
          Shortcut {
              enabled: map.zoomLevel > map.minimumZoomLevel
              sequence: StandardKey.ZoomOut
              onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
          }
      }



    Image{
        id:lockIcon
        anchors{
            top:  parent.top
            left: parent.left
            margins: 10
        }

        fillMode: Image.PreserveAspectFit
        source: (systemHandler.carLocked? "qrc:/UI/assets/LockIcon.png": "qrc:/UI/assets/UnlockIcon.png");
        width: parent.width/30
        MouseArea{
            anchors.fill: parent
            onClicked: systemHandler.carLocked= !systemHandler.carLocked;
        }

    }


    Text{
        id: id_dateTime
        anchors{
            left: lockIcon.right
            top:  parent.top
            bottom: parent.bottom
            margins: 15
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: systemHandler.p_carCurrentTimer
    }


    Text{
        id: id_carTemperature
        anchors{
            left: id_dateTime.right
            top:  parent.top
            bottom: parent.bottom
            margins: 15
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: systemHandler.p_carTemperature+"°F"
    }


    Image{
        id:id_ProfilePHoto
        anchors{
            top:  parent.top
            left: id_carTemperature.left
            leftMargin: 50
            topMargin: 7
        }

        fillMode: Image.PreserveAspectFit
        source: "qrc:/UI/assets/profilePhoto.jpg";
        width: parent.width/30


    }


    Text{
        id: id_userName
        anchors{
            left: id_ProfilePHoto.right
            top:  parent.top
            bottom: parent.bottom
            margins: 15
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: ""
    }


    NavigationSearchBox{
        id: id_NavigationBox

        anchors{
            left: lockIcon.left
            top: lockIcon.bottom
            topMargin: 10
        }
        width: parent.width/3
        height: parent.height/12
    }


}


