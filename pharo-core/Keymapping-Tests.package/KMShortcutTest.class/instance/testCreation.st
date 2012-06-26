as yet unclassified
testCreation
	self assert: ($e asShortcut isKindOf: KMSingleKeyShortcut).
	self assert: ($e ctrl isKindOf: KMModifiedShortcut).
	self assert: ($e ctrl alt shift command isKindOf: KMModifiedShortcut).