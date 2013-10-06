testIfNotEmptyDoifNotEmpty

	self assert: (self empty ifNotEmptyDo: [:s | false] ifEmpty: [true]).
	self assert: (self nonEmpty 
					ifNotEmptyDo: [:s | s] 
					ifEmpty: [false]) == self nonEmpty