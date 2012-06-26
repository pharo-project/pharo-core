file status
entryAt: fileName ifAbsent: aBlock
	"Find the entry with local name fileName and answer it.
	If not found, answer the result of evaluating aBlock."
	| comparisonBlock |
	self isCaseSensitive
		ifTrue: [comparisonBlock := [:entry | entry name = fileName]]
		ifFalse: [comparisonBlock := [:entry | entry name sameAs: fileName]].
	^ self entries detect: comparisonBlock ifNone: [aBlock value]