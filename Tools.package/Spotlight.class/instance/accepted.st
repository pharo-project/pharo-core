opening
accepted
	| symbol |
	
	self close.
	
	symbol := self model contents trimBoth asSymbol.
	symbol isEmpty ifTrue: [ ^self ].
	
	
	(symbol at: 1) isUppercase
		ifTrue: [ 
			(Smalltalk globals 
				at: symbol
				ifAbsent: [ ^self inform: 'There is no class named ', self model contents])
				browse ]
		ifFalse: [ 
			self systemNavigation browseAllImplementorsOf: symbol ]