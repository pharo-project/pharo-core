instance creation
versionCountForSelector: aSelector class: aClass
	"Answer the number of versions known to the system for the given class and method, including the current version.  A result of greater than one means that there is at least one superseded version.  Answer zero if no logged version can be obtained."
	
	| method aChangeList |
	method := aClass compiledMethodAt: aSelector ifAbsent: [^ 0].
	aChangeList := self new
			scanVersionsOf: method class: aClass meta: aClass isMeta
			category: nil selector: aSelector.
	^ aChangeList ifNil: [0] ifNotNil: [aChangeList list size]