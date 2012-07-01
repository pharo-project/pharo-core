accessing
window
	^self owner ifNil: [ self valueOfProperty: #browserWindow ].