hasClassNamed: aClassName
	^ self blocks anySatisfy: [ :b | b value anySatisfy: [ :c | c name = aClassName ] ]