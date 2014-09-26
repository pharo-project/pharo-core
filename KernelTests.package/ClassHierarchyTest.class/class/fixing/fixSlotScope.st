fixSlotScope
	"postscript for issue 11596"
	
	| ivName all candidates toRebuild |
    ivName := 'anIVNameImPrettySureNobodyUses'.
    all := Smalltalk allClasses flatCollect: [ :e | { e . e class } ].
    candidates := all reject: [ :e | e superclass isNil or: [e layout slotScope isKindOf: LayoutEmptyScope ] ].
    toRebuild := candidates reject: [ :e | e superclass layout slotScope == e layout slotScope parentScope ].
    toRebuild sort: [ :a :b | a allSuperclasses size > b allSuperclasses size ].
    toRebuild do: [ :e | 
    e addInstVarNamed: ivName.
        (e isClassSide
          ifTrue: [ (Smalltalk at: e instanceSide name) classSide ]
          ifFalse: [ Smalltalk at: e name ]) removeInstVarNamed: ivName ]