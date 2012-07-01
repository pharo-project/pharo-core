private-accessing
environmentAt: anItemKind

	(self itemKind = anItemKind) ifTrue: [^self item].
	^environment at: anItemKind ifAbsent: [nil]