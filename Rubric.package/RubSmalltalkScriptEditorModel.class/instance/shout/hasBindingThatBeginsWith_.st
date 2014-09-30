hasBindingThatBeginsWith: aString 
	^ client ifNil: [ false ] ifNotNil:  [ client hasBindingThatBeginsWith: aString  ]