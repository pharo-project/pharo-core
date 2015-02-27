caseSensitive
	^ caseSensitive ifNil: [ caseSensitive := self defaultCaseSensitive ]