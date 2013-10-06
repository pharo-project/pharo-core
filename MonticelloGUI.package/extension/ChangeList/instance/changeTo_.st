changeTo: changeSubset
	| newList newChangeList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	1 to: changeList size do:
		[:i | (changeSubset includes: (changeList at: i)) ifTrue:
			[newChangeList add: (changeList at: i).
			newList add: (list at: i)]].
	newChangeList size < changeList size
		ifTrue:
			[changeList := newChangeList.
			list := newList.
			listIndex := 0.
			listSelections := Array new: list size withAll: false].
	self changed: #list

	