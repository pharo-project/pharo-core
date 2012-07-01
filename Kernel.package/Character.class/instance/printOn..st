printing
printOn: aStream
	| name |
	(value > 32 and: [ value ~= 127])
		ifTrue: [ aStream nextPut: $$; nextPut: self ]
		ifFalse: [
			name := self class constantNameFor: self.
			name notNil
				ifTrue: [ aStream nextPutAll: self class name; space; nextPutAll: name ]
				ifFalse: [ aStream nextPutAll: self class name; nextPutAll: ' value: '; print: value ] ].