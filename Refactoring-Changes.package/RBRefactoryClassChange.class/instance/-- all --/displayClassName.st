displayClassName
	^ isMeta
		ifTrue: [ self changeClassName , ' class' ]
		ifFalse: [ self changeClassName asString ]