displayString
	^ version ifNil:
		[ name ]
			   ifNotNilDo:
		[ :aVersion | name, ' (', aVersion author , '.', aVersion name asString, ')' ].