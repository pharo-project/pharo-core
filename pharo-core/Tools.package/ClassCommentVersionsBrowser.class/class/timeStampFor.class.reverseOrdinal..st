utilities
timeStampFor: aSelector class: aClass reverseOrdinal: anInteger
	"Answer the time stamp corresponding to some version of the given method, nil if none.  The reverseOrdinal parameter is interpreted as:  1 = current version; 2 = last-but-one version, etc."
	
	| aChangeList |
	aChangeList :=  self new scanVersionsOf: aClass.
	^ aChangeList ifNil: [nil] ifNotNil:
		[aChangeList list size >= anInteger
			ifTrue:
				[(aChangeList changeList at: anInteger) stamp]
			ifFalse:
				[nil]]