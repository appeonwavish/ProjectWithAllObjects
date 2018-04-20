$PBExportHeader$allobjects.sra
$PBExportComments$Generated Application Object
forward
global type allobjects from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type allobjects from application
string appname = "allobjects"
end type
global allobjects allobjects

on allobjects.create
appname="allobjects"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on allobjects.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;integer a,b,c
a = 10
b = 20
c = fun(a,b)
// Profile test
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=SQL Anywhere 17 Demo;UID=dba;PWD=sql'"
connect;

open(win)

end event

event close;disconnect;
end event

