currentContext

	^self selectedContext 
		ifNil: [ self contextToSelectFrom: self session ] 
		ifNotNil:  [ self selectedContext  ]