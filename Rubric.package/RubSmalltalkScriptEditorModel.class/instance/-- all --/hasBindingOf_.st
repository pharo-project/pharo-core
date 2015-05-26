hasBindingOf: aString 
	^ client ifNil: [ false ] ifNotNil:  [ client hasBindingOf: aString  ]