$PBExportHeader$target3.sra
$PBExportComments$Generated Application Object
forward
global type target3 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type target3 from application
string appname = "target3"
end type
global target3 target3

on target3.create
appname="target3"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on target3.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//
end event

