import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0
import QtQuick.Controls.Styles 1.3
import "game.js" as Process
ApplicationWindow {
    id:root
    width: Screen.width
    height: Screen.height
    visible:true
    property int status : 1
    Rectangle{
        width:parent.width
        height:parent.height
        color:"black"
    }
     FontLoader{
         id: newfont
         source:"circle.ttc"
     }

    Video{
        id:video
        source: "file:video/background.wmv"
        width:parent.width
        height:parent.height
        autoPlay:true
        onStopped: video.play();
    }
    Video{
        volume:0.6
        visible:false;
        id:video2
        width:parent.width
        height:parent.height
        autoPlay: false
        onStopped:{
        }
    }
    ProgressBar{
        visible:false
        id:progress
        y:parent.height-25
        value: video2.position / video2.duration
        width:parent.width
        height:25
        opacity:0.7
        style:
        ProgressBarStyle {
            background: Rectangle {
                radius: 2
                color: "lightgray"
                border.color: "gray"
                border.width: 1
                opacity: 0.1*10/7
            }
            progress: Rectangle {
                        color: "steelblue"
                        border.color: "steelblue"
                        opacity:0.5
                    }
        }
             MouseArea{
                 anchors.fill: parent
                 onClicked: {
                     video2.seek(mouse.x/parent.width*video2.duration);
                 }
             }
        }
    Item{
        id:mainlogo
        width:parent.height * 1.15
        height:mainlogo.width / 16 * 14
        x: parent.width / 2 - mainlogo.width / 2 + 6
        y: parent.height * 0.05
        Image{
            width:parent.width
            height:parent.height
            source: "image/logo.png"
        }
        Behavior on opacity {
            NumberAnimation{
                duration:100
            }
        }
    }
    Item{
        id:mainbutton
        width:parent.height / 7
        height:parent.height / 7
        x:parent.width *1.7 / 2 - mainbutton.width / 2
        y:parent.height / 2 *1.6
        visible:true
        Image{
            id:image
            source: "image/start-button.png"
            width:parent.width
            height:parent.height
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                Process.setnow();
                state2();
            }
        }
        Behavior on opacity {
            NumberAnimation{
                duration:200
            }
        }
    }
    SongSelect{
        id:song1
        visible:false
        x:-width
        y:parent.height * 0.1
        Text{
            id:songtext1
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 400/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"pink"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                video2.source = Process.poppath(0);
                song1.x = Screen.width;
                song2.x = Screen.width;
                song3.x = Screen.width;
                Process.setanswer(0,answer,answer2,coltext1,coltext2,coltext3,coltext4,coltext5,coltext6,coltext7,coltext8,coltext9,coltext10,coltext11,
                                  coltext12,coltext13,coltext14,coltext15);
                answer.x = answer.x * root.width / 1366
                answer.y = answer.y * root.height / 768
                answer2.x = answer2.x * root.width / 1366
                answer2.y = answer2.y * root.height / 768
                state4();
            }
        }
    }
    SongSelect{
        id:song2
        visible:false
        x:-width
        y:parent.height /2 - height/2
        Text{
            id:songtext2
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 400/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"pink"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                video2.source = Process.poppath(1);
                song1.x = Screen.width;
                song2.x = Screen.width;
                song3.x = Screen.width;
                Process.setanswer(1,answer,answer2,coltext1,coltext2,coltext3,coltext4,coltext5,coltext6,coltext7,coltext8,coltext9,coltext10,coltext11,
                                  coltext12,coltext13,coltext14,coltext15);
                answer.x = answer.x * root.width / 1366
                answer.y = answer.y * root.height / 768
                answer2.x = answer2.x * root.width / 1366
                answer2.y = answer2.y * root.height / 768
                state4();
            }
        }
    }
    SongSelect{
        id:song3
        visible:false
        x:-width
        y:parent.height * 0.9 - height
        Text{
            id:songtext3
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 400/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"pink"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                video2.source = Process.poppath(2);
                song1.x = Screen.width;
                song2.x = Screen.width;
                song3.x = Screen.width;
                Process.setanswer(2,answer,answer2,coltext1,coltext2,coltext3,coltext4,coltext5,coltext6,coltext7,coltext8,coltext9,coltext10,coltext11,
                                  coltext12,coltext13,coltext14,coltext15);
                answer.x = answer.x * root.width / 1366
                answer.y = answer.y * root.height / 768
                answer2.x = answer2.x * root.width / 1366
                answer2.y = answer2.y * root.height / 768
                state4();
            }
        }
    }
    TypeSelect{
        id:type1
        x:-width
        y:parent.height*0.1
        Text{
            id:typetext1
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 270/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"brown"
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                type1.x = Screen.width
                type2.x = Screen.width
                type3.x = Screen.width
                type4.x = Screen.width
                Process.settype(0);
                state3();
            }
        }
    }
    TypeSelect{
        id:type2
        x:-width
        y:parent.height*0.9-height
        Text{
            id:typetext2
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 270/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"brown"
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                type1.x = Screen.width
                type2.x = Screen.width
                type3.x = Screen.width
                type4.x = Screen.width
                Process.settype(1);
                state3();
            }
        }
    }
    TypeSelect{
        id:type3
        x:-width
        y:parent.height*0.1
        Text{
            id:typetext3
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 270/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"brown"
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                type1.x = Screen.width
                type2.x = Screen.width
                type3.x = Screen.width
                type4.x = Screen.width
                Process.settype(2);
                state3();
            }
        }
    }
    TypeSelect{
        id:type4
        x:-width
        y:parent.height*0.9-height
        Text{
            id:typetext4
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            font.pixelSize: 270/text.length*1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family: newfont.name
            color:"brown"
        }
        MouseArea{
            anchors.fill: parent;
            onClicked: {
                type1.x = Screen.width
                type2.x = Screen.width
                type3.x = Screen.width
                type4.x = Screen.width
                Process.settype(3);
                state3();
            }
        }
    }

    /*Image{
        id:answerimage
        source:"answermodule/4.jpg"
        width:parent.width
        height:parent.height
        x:86/2
    }*/

    Row{
        id:answer
        x:500 * root.width / 1366
        y:150 * root.width / 1366
        visible:false
        Column{
            id:col1
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext1
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col2
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext2
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col3
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext3
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col4
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext4
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col5
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext5
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col6
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext6
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col7
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext7
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col8
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext8
                text:"哈"
                font.pointSize: 77* root.width / 1366
            }
        }
        Column{
            id:col9
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext9
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col10
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext10
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col11
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext11
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col12
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext12
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
    }
    Row{
        id:answer2
        x:52
        y:28
        visible:false
        Column{
            id:col13
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext13
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col14
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext14
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
        Column{
            id:col15
            width:112 * root.width / 1366
            Text{
                font.family: newfont.name
                id:coltext15
                text:"哈"
                font.pointSize: 77 * root.width / 1366
            }
        }
    }
    function state1(){
        root.status = 1
        mainlogo.opacity = 1;
        mainbutton.opacity = 1;
        video2.visible = false;
        progress.visible = false;
    }
    function state2(){
        root.status = 2
        mainlogo.opacity = 0;
        mainbutton.opacity = 0;
        typetext1.text = Process.pop(0);
        typetext2.text = Process.pop(1);
        typetext3.text = Process.pop(2);
        typetext4.text = Process.pop(3);
        type1.x = root.width/2.2-type1.width
        type2.x = root.width/2.2-type2.width
        type3.x = root.width-root.width/2.2
        type4.x = root.width-root.width/2.2
        video2.visible = false;
        progress.visible = false;
    }
    function state3(){
        root.status = 3
        mainlogo.opacity = 0;
        mainbutton.opacity = 0;
        song1.visible = true;
        song2.visible = true;
        song3.visible = true;
        songtext1.text = Process.popsong(0)
        songtext2.text = Process.popsong(1)
        songtext3.text = Process.popsong(2)
        song1.x = root.width/2-song1.width/2
        song2.x = root.width/2-song2.width/2
        song3.x = root.width/2-song3.width/2
        video2.visible = false;
        progress.visible = false;
    }
    function state4(){
        root.status = 4
        mainlogo.opacity = 0;
        mainbutton.opacity = 0;
        video2.visible = true;
        progress.visible = true;
    }
    MouseArea{
        id:test
        visible:false
        anchors.fill: parent
        onClicked: {
            answer.x = mouse.x;
            answer.y = mouse.y;
            ttt.text = answer.x +" " +answer.y
        }
    }

    Item{
        focus:true
        Keys.onPressed: {
            if(event.key == Qt.Key_S)
            {
                if(root.status == 4)
                {
                    Process.showanswer(answer,answer2,col1,col2,col3,col4,col5,col6,col7,col8,col9,col10,col11,col12,col13,col14,col15);
                }
            }
            if(event.key == Qt.Key_C)
            {
                if(root.status == 4)
                {
                    Process.closeanswer(answer,answer2);
                }
            }
            if(event.key == Qt.Key_O)
            {
                test.visible = true;
            }
            if(event.key == Qt.Key_P)
            {
                test.visible = false;
            }
        }
        Keys.onSpacePressed:{
            if(video2.playbackState == MediaPlayer.PlayingState)
            {
                video2.pause();
            }
            else if(video2.playbackState == MediaPlayer.PausedState)
            {
                video2.play();
            }
            else if(video2.status == 3)
            {
                video2.play()
            }
        }
        Keys.onUpPressed: {
            video2.volume+= 0.1;
        }
        Keys.onDownPressed: {
            video2.volume-= 0.1;
        }
        Keys.onRightPressed: {
            if(root.status == 1){
                Process.setnow();
                state2();
            }else if(root.status == 2){
                if(Process.ifnowtype())
                {
                    type1.x = Screen.width
                    type2.x = Screen.width
                    type3.x = Screen.width
                    type4.x = Screen.width
                    state3();
                }
            }else if(root.status == 3){
                if(Process.ifsong(video2) && Process.checktype())
                {
                    song1.x = Screen.width
                    song2.x = Screen.width
                    song3.x = Screen.width
                    state4();
                }
            }else if(root.status == 4){
                Process.reset();
                Process.setnow();
                if(video2.playbackState == MediaPlayer.PlayingState)
                    video2.pause();
                answer.visible = false;
                answer2.visible = false;
                state2();
            }
        }
        Keys.onLeftPressed: {
            if(root.status == 2){
                type1.x = -type1.width;
                type2.x = -type2.width;
                type3.x = -type3.width;
                type4.x = -type4.width;
                if(video2.status == 6 || video2.status == 7 || video2.status == 3)
                {
                    state4();
                }
                else
                {
                    state1();
                }
            }else if(root.status == 3){
                if(Process.ifnow())
                {
                    song1.x = -song1.width
                    song2.x = -song2.width
                    song3.x = -song3.width
                    state2();
                }
            }else if(root.status == 4){
                if(Process.ifnowtype())
                {
                    if(video2.playbackState == MediaPlayer.PlayingState)
                        video2.pause();
                    state3();
                    answer.visible = false;
                    answer2.visible = false;
                }
            }
        }
    }
    Text{
        id:ttt
        color:"white"
        font.pixelSize: 50
    }
}
