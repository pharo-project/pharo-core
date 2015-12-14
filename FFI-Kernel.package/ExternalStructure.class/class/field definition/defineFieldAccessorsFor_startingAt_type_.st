defineFieldAccessorsFor: fieldName startingAt: byteOffset type: type
	"Define read/write accessors for the given field"
	| code |
	(type isVoid and:[type isPointerType not]) ifTrue:[^self].
	code := fieldName,'
	"This method was automatically generated"
	', (type readFieldAt: byteOffset).
	self compile: code classified: 'accessing'.
	code := fieldName,': anObject
	"This method was automatically generated"
	', (type writeFieldAt: byteOffset with:'anObject').
	self compile: code classified: 'accessing'.