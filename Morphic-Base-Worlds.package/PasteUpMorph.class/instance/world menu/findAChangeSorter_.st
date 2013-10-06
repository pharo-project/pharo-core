findAChangeSorter: evt
	"Locate a change sorter, open it, and bring it to the front.  Create one if necessary"

	self findAWindowSatisfying:
		[:aWindow | (aWindow model isKindOf: Smalltalk tools changeSorter) or:
				[aWindow model isKindOf: Smalltalk tools dualChangeSorter]] 
					orMakeOneUsing: [Smalltalk tools dualChangeSorter new openWithSpec]