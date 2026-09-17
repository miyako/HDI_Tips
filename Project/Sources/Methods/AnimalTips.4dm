//%attributes = {"invisible":true}
#DECLARE($x : Real; $y : Real)->$result : Text

var $column; $row : Integer

ARRAY TEXT:C222($animals; 4; 4)
$animals{1}{1}:=Localized string("AnimalCow")
$animals{1}{2}:=Localized string("AnimalCamel")
$animals{1}{3}:=Localized string("AnimalRabbit")
$animals{1}{4}:=Localized string("AnimalPig")
$animals{2}{1}:=Localized string("AnimalFish")
$animals{2}{2}:=Localized string("AnimalRat")
$animals{2}{3}:=Localized string("AnimalMonkey")
$animals{2}{4}:=Localized string("AnimalElephant")
$animals{3}{1}:=Localized string("AnimalBear")
$animals{3}{2}:=Localized string("AnimalPanther")
$animals{3}{3}:=Localized string("AnimalLion")
$animals{3}{4}:=Localized string("AnimalFox")
$animals{4}{1}:=Localized string("AnimalOwl")
$animals{4}{2}:=Localized string("AnimalDuck")
$animals{4}{3}:=Localized string("AnimalHen")
$animals{4}{4}:=Localized string("AnimalFalcon")

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
	$result:=$animals{$row}{$column}
Else 
	$result:=""
End if 
