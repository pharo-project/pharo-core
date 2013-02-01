instance creation
fromString: aString
	
	| result |
	
	result := NativeBoost allocate: aString size + 1.
	(self assert: result notNil).
	result writeString: aString.
	^ result