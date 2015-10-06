import QtQuick 2.0
Item{
    x:-width
    width: parent.width / 1.75
    height: parent.height / 4.2
    FontLoader{
        id: newfont
        source:"circle.ttc"
    }
    Image{
        source:"image/songbutton.png"
        width:parent.width
        height:parent.height
        opacity:0.8
    }
    Behavior on x {
        SpringAnimation {
            spring: 2; damping: 0.2;
            duration:150
        }
    }
}
