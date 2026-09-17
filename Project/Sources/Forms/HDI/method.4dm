var $version : Text

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form.quit:=False
		If (Undefined(Form.minimumVersion))
			Form.minimumVersion:="1640"
		End if 
		
		$version:=Application version:C493
		
		If ($version<Form.minimumVersion)
			
			Form.quit:=True
			OBJECT SET TITLE:C194(*; "BtnDemo"; Localized string("BtnClose"))
			OBJECT SET VISIBLE:C603(*; "TxtSorry@"; True:C214)
			OBJECT SET VISIBLE:C603(*; "TxtInfo@"; False:C215)
			
		End if 
		
End case 
