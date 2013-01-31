reading
continueReadCSINumber: v
	| value character |
	value := v.
	[ $0 <= (character := inStream next) and: [ character <= $9 ]]
		whileTrue: [
			value := value * 10 + (character asInteger - $0 asInteger ) ].
	character = $~ ifFalse: [ self fail: character in: 'Control Sequence Introducer (number end)' ].
	^ csi at: value ifAbsent: [ self fail: character in: 'Control Sequence Introducer (number end)' ].