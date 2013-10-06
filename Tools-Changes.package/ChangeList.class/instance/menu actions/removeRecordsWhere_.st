removeRecordsWhere: aBlock
	"Remove records for which the block returns true."

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	changeList with: list do:
		[:record :textualDescription |
		(aBlock cull: record cull: textualDescription)
					ifFalse:
						[newChangeList add: record.
						newList add: textualDescription]].
	newChangeList size < changeList size
		ifTrue:
			[changeList := newChangeList.
			list := newList.
			listIndex := 0.
			listSelections := Array new: list size withAll: false].
	self changed: #list.