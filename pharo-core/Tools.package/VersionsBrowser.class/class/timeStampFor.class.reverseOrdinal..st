instance creation
timeStampFor: aSelector class: aClass reverseOrdinal: anInteger
	"Answer the time stamp corresponding to some version of the given method, nil if none.  The reverseOrdinal parameter is interpreted as:  1 = current version; 2 = last-but-one version, etc."
	
	| method aChangeList |
	method := aClass compiledMethodAt: aSelector ifAbsent: [^ nil].
	aChangeList := self new
			scanVersionsOf: method class: aClass meta: aClass isMeta
			category: nil selector: aSelector.
	^ aChangeList ifNil: [nil] ifNotNil:
		[aChangeList list size >= anInteger
			ifTrue:
				[(aChangeList changeList at: anInteger) stamp]
			ifFalse:
				[nil]]