import QtQuick 2.0

Item{
    width:parent.width * 0.40263543191800878477306002928258
    height:parent.height * 0.32552083333333333333333333333333
    Image{
        width:parent.width
        height:parent.height
        source:"image/typebutton.png"
    }
    Behavior on x {
        SpringAnimation {
            spring: 2; damping: 0.2;
            duration:150
        }
    }
}
