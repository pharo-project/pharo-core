message list
sourceStringPrettifiedAndDiffed
	"Answer a copy of the source code for the selected message, transformed by diffing and pretty-printing exigencies"

	| class selector sourceString |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	(class isNil or: [selector isNil]) ifTrue: [^'missing'].
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [^'error'].
	self validateMessageSource: sourceString forSelector: selector.
	(#(#prettyPrint #prettyDiffs) 
		includes: contentsSymbol) 
			ifTrue: 
				[sourceString := class prettyPrinterClass 
							format: sourceString
							in: class
							notifying: nil].
	self showingAnyKindOfDiffs 
		ifTrue: [sourceString := self diffFromPriorSourceFor: sourceString].
	^sourceString