$PBExportHeader$uo.sru
forward
global type uo from userobject
end type
type cb_1 from commandbutton within uo
end type
type ov_1 from oval within uo
end type
end forward

global type uo from userobject
integer width = 1170
integer height = 988
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
ov_1 ov_1
end type
global uo uo

on uo.create
this.cb_1=create cb_1
this.ov_1=create ov_1
this.Control[]={this.cb_1,&
this.ov_1}
end on

on uo.destroy
destroy(this.cb_1)
destroy(this.ov_1)
end on

type cb_1 from commandbutton within uo
integer x = 402
integer y = 352
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type ov_1 from oval within uo
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer x = 110
integer y = 192
integer width = 329
integer height = 176
end type

