findAChangeSorter: evt
	"Locate a change sorter, open it, and bring it to the front.  Create one if necessary"
	| changeSorterClass |
	
	changeSorterClass := Smalltalk tools changeSorter.
	
	self 
		findAWindowSatisfying: [:aWindow | aWindow model isKindOf: changeSorterClass]
		orMakeOneUsing: [changeSorterClass open]