addServiceFor: served toMenu: aMenu
	aMenu add: self label 
		target: self 
		selector: #performServiceFor: "self requestSelector "
		argument: served.
	self usingLineAfter ifTrue: [ aMenu addLine ].