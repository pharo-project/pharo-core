fromString: aString
	| result |
	
	result := self allocate: aString size + 1.
	(self assert: result notNil).
	result writeString: aString.
	^ result