class list
selectedClass
	"Answer the currently-selected class.  If there is no selection, or if the selection refers to a class no longer extant, return nil"
	| c |
	^ currentClassName ifNotNil: [(c := self selectedClassOrMetaClass)
		ifNotNil: [c theNonMetaClass]]