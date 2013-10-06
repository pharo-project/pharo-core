asMenuRegistrationIn: aBuilder
	| item |
	
	item := (aBuilder item: self specId)
		label: self label;
		icon: self icon;
		keyText: self keyText;
		enabled: self enabled;
		order: self order asFloat;
		target: self; 
		selector: #execute;
		arguments: #().
	self needsSeparatorAfter 
		ifTrue: [ item withSeparatorAfter ].
	^ item
