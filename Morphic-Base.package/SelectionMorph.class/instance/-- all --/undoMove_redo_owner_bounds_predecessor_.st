undoMove: cmd redo: redo owner: oldOwners bounds: oldBoundses predecessor: oldPredecessors 
	"Handle undo and redo of move commands in morphic"

	| item |
	redo 
		ifFalse: 
			["undo sets up the redo state first"

			cmd 
				redoTarget: self
				selector: #undoMove:redo:owner:bounds:predecessor:
				arguments: { 
						cmd.
						true.
						selectedItems collect: [:m | m owner].
						selectedItems collect: [:m | m bounds].
						selectedItems collect: [:m | m owner morphPreceding: m]}].
	1 to: selectedItems size do: 
				[:i | 
				item := selectedItems at: i.
				(oldOwners at: i) ifNotNil: 
						[(oldPredecessors at: i) ifNil: [(oldOwners at: i) addMorphFront: item]
							ifNotNil: [(oldOwners at: i) addMorph: item after: (oldPredecessors at: i)]].
				item bounds: (oldBoundses at: i).
				item isSystemWindow ifTrue: [item activate]]