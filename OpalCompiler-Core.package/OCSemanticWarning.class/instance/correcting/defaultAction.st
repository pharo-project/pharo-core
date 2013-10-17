defaultAction
	
	self errorNotification ifFalse: [ ^nil ].
	^self openMenuIn: 
		[:labels :lines :caption | 
		UIManager default chooseFrom: labels lines: lines title: caption]