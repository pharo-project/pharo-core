mergeUpTo: aSpan
	(aSpan = self next) ifTrue:[
		(self next doMerge: self) ifTrue:[
			self merge: self next.
			^self.
		]
		ifFalse:[
			^self next.
		].
	].
	
	(self next doMerge: self) ifTrue:[
			self merge: self next.
			^self mergeUpTo: aSpan.
		]
	ifFalse:[
			^self next mergeUpTo: aSpan.
		].