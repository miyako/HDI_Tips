//%attributes = {}


C_REAL:C285($x; $1; $y; $2)
C_LONGINT:C283($column; $row)
C_TEXT:C284($0)

$x:=$1
$y:=$2

ARRAY TEXT:C222($animals; 4; 4)
$animals{1}{1}:="Cow"
$animals{1}{2}:="Camel"
$animals{1}{3}:="Rabbit"
$animals{1}{4}:="Pig"
$animals{2}{1}:="Fish"
$animals{2}{2}:="Rat"
$animals{2}{3}:="Monkey"
$animals{2}{4}:="Elephant"
$animals{3}{1}:="Bear"
$animals{3}{2}:="Panther"
$animals{3}{3}:="Lion"
$animals{3}{4}:="Fox"
$animals{4}{1}:="Owl"
$animals{4}{2}:="Duck"
$animals{4}{3}:="Hen"
$animals{4}{4}:="Falcon"

Case of 
	: ($x<125)
		$column:=1
	: ($x<265)
		$column:=2
	: ($x<375)
		$column:=3
	Else 
		$column:=4
End case 

Case of 
	: ($y<110)
		$row:=1
	: ($y<230)
		$row:=2
	: ($y<365)
		$row:=3
	Else 
		$row:=4
End case 

If ($row>0) & ($column>0)
	$0:=$animals{$row}{$column}
Else 
	$0:=""
End if 



