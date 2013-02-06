private
cacheInterestingSymbolsAndDo: aBlock
	"For time issue, we collect and perform the block in only one iteration"
	
	cachedSymbols := OrderedCollection new: 5000.
	Symbol allSymbolTablesDo:[:symbol |
		symbol isEmpty
			ifFalse: [
				(symbol first isUppercase and:[ Smalltalk globals includesKey: symbol ])
					ifTrue:[ 
						cachedSymbols add: symbol.
						aBlock value: symbol ]
					ifFalse: [ 
						symbol first isLetter ifTrue: [ 
							cachedSymbols add: symbol.
							aBlock value: symbol ]]]].