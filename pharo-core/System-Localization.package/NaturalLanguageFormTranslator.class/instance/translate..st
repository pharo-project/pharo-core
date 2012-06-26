utilities
translate: aString

	^ (self generics
		at: aString ifAbsent: [nil]) deepCopy.

	"Do you like to write 'form ifNotNil: [form deepCopy]'?"
