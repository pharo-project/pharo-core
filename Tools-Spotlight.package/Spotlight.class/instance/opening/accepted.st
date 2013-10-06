accepted
	| symbol |
	
	self close.
	
	symbol := self model contents trimBoth asSymbol.
	symbol isEmpty ifTrue: [ ^self ].
	
	self resolveSymbol: symbol