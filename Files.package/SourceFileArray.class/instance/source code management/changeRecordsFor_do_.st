changeRecordsFor: aMethodDefinition do: aUnaryBlock
	"Evaluate aUnaryBlock with each of the ChangeRecords of aMethodDefinition. Most recent changes are evaluated first."

	| method |
	method := aMethodDefinition actualClass 
		compiledMethodAt: aMethodDefinition selector
		ifAbsent: [ ^ self ].

	self 
		changeRecordsFrom: method sourcePointer 
		className: aMethodDefinition theNonMetaClassName
		isMeta: aMethodDefinition classIsMeta
		do: aUnaryBlock