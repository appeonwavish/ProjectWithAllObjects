$PBExportHeader$win.srw
forward
global type win from window
end type
type uo_1 from uo within win
end type
type dw_1 from datawindow within win
end type
end forward

global type win from window
integer width = 5179
integer height = 1776
boolean titlebar = true
string title = "testwin"
string menuname = "mn"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
uo_1 uo_1
dw_1 dw_1
end type
global win win

on win.create
if this.MenuName = "mn" then this.MenuID = create mn
this.uo_1=create uo_1
this.dw_1=create dw_1
this.Control[]={this.uo_1,&
this.dw_1}
end on

on win.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.uo_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()

end event

event clicked;st st_1
st_1.strvalue = "test"
st_1.lvalue = 10

messagebox(st_1.strvalue, string(st_1.lvalue))


end event

type uo_1 from uo within win
integer x = 3877
integer y = 256
integer taborder = 20
end type

on uo_1.destroy
call uo::destroy
end on

type dw_1 from datawindow within win
integer x = 37
integer y = 32
integer width = 3767
integer height = 1440
integer taborder = 10
string title = "none"
string dataobject = "dw"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

