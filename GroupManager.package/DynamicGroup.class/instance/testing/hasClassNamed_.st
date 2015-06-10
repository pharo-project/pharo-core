hasClassNamed: aClassName
	^ self blocks anySatisfy: [ :b | b value anySatisfy: [ :m | m methodClass name = aClassName ] ]