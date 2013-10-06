text: aString markup: aMarkup 
	(aMarkup isNil or:[ aMarkup isEmpty ] )  
		ifTrue: [ self text: aString ]
		ifFalse: [ self primSetMarkup:  aMarkup length: aMarkup size].
	
	