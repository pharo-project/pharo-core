buildSelector
	^(String streamContents: [ :selectorStream | 
		selectorParts do: [ :each | selectorStream nextPutAll: each value ]]) asSymbol