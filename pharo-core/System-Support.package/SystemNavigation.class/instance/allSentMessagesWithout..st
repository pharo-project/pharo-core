query
allSentMessagesWithout: classesAndMessagesPair 
	"Answer the set of selectors which are sent somewhere in the system,  
	computed in the absence of the supplied classes and messages."
	| sent absentClasses absentSelectors |
	sent := IdentitySet new: CompiledMethod instanceCount.
	absentClasses := classesAndMessagesPair first.
	absentSelectors := classesAndMessagesPair second.
	self allBehaviorsDo: [:class |
		((absentClasses includes: class)
			ifTrue: [{}]
			ifFalse: [{class. class classSide}]) do: [:each | 
					(absentSelectors isEmpty ifTrue: [each selectors] ifFalse: [each selectors copyWithoutAll: absentSelectors])
					do: [:sel | "Include all sels, but not if sent by self"
						(each compiledMethodAt: sel) literalsDo: [:m | 
								(m isSymbol) ifTrue: ["might be sent"
										m == sel ifFalse: [sent add: m]].
								(m isMemberOf: Array) ifTrue: ["might be performed"
										m do: [:x | (x isSymbol) ifTrue: [x == sel ifFalse: [sent add: x]]]]]]]].
		"The following may be sent without being in any literal frame"
		1
			to: Smalltalk specialSelectorSize
			do: [:index | sent
					add: (Smalltalk specialSelectorAt: index)].
	^ sent