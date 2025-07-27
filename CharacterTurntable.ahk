#SingleInstance Force

total := 1920
perTick := 20

+k:: {
    Send("^+!R")
    MouseClickDrag("L",1450,500,1450-(total/2),500)
    ControlSend("!+^R",,"OBS")
    while PixelGetColor(1730, 1060) != "0xff0000"{
        Sleep(1)
    }
    loop Floor(total/perTick) {
        MouseClickDrag("L",1450,500,1450-perTick,500)
    }
    ControlSend("!+^R",,"OBS")
}

Escape::{
    ExitApp()
}