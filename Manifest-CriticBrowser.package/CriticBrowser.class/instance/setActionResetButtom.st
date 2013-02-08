initialization
setActionResetButtom
	|text|
	
	text := 'Do you want to delete the current configuration
 and create a new query ?' .
	^ [(MorphicUIManager new confirm: text)
		ifTrue: [ self  delete. 
				SelectPackageBrowser open.] ]