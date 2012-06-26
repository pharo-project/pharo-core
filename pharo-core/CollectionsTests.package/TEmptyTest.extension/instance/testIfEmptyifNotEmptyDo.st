tests - empty
testIfEmptyifNotEmptyDo
	"self debug #testIfEmptyifNotEmptyDo"
	
	self assert: (self empty ifEmpty: [true] ifNotEmptyDo: [:s | false]).
	self assert: (self nonEmpty ifEmpty: [false] ifNotEmptyDo: [:s | true]).
	self assert: (self nonEmpty 
					ifEmpty: [false]
					ifNotEmptyDo: [:s | s]) == self nonEmpty.