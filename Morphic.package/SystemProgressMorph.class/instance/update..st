updating
update: aSymbol
	
	| msRefreshRate isTimeForRefresh |
	msRefreshRate := 60 "roughly 16 times per second".
	isTimeForRefresh := Time millisecondClockValue - self lastRefresh >= msRefreshRate.
	(self isInWorld and: [ isTimeForRefresh ]) ifFalse: [ ^ self ].
	
	aSymbol == #width
		ifTrue: [ self updateWidth ]