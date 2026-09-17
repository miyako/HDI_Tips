var $message : Text

If (Form event code:C388=On Mouse Move:K2:35)
	$message:=AnimalTips(MouseX; MouseY)
	If (OBJECT Get help tip:C1182(*; "Picture")#$message)
		OBJECT SET HELP TIP:C1181(*; "Picture"; $message)
	End if 
End if 