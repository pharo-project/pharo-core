removeMethod: aMethod inClass: aClass
	"If a message is selected, create a Confirmer so the user can verify that  
	the currently selected message should be removed from the system. If 
	so, remove it. "
	
	self okToChange ifFalse: [^ false].
	^ super removeMethod: aMethod inClass: aClass