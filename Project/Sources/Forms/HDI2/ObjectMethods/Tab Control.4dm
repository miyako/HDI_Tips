If (Form event code:C388=On Clicked:K2:4)
	If (Tab Control=2)
		SET DATABASE PARAMETER:C642(Tips enabled:K37:79; EnableTips)
		SET DATABASE PARAMETER:C642(Tips delay:K37:80; TipsDelay)
		SET DATABASE PARAMETER:C642(Tips duration:K37:81; TipsDuration)
	End if 
	If (Tab Control=3)
		SET DATABASE PARAMETER:C642(Tips enabled:K37:79; 1)
		SET DATABASE PARAMETER:C642(Tips delay:K37:80; 60)
		SET DATABASE PARAMETER:C642(Tips duration:K37:81; 500)
	End if 
End if 