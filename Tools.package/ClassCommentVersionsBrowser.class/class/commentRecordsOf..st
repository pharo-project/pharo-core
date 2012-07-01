utilities
commentRecordsOf: aClass
	"Return a list of ChangeRecords for all versions of the method at selector. Source code can be retrieved by sending string to any one.  Return nil if the method is absent."

	| aList |
	aList := self new
			scanVersionsOf: aClass.
	^ aList ifNotNil: [aList changeList]