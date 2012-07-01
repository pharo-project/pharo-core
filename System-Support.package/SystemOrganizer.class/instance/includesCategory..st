remove
includesCategory: aString
	"Return all matching categories"
	
	self categories ifNil: [ ^#() ].
	^ self categories includes: aString