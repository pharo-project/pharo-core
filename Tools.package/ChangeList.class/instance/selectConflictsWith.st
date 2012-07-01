menu actions
selectConflictsWith
	"Selects all method definitions for which there is ALSO an entry in the specified changeSet or changList chosen by the user."
	| aStream all index |
	aStream := (String new: 200) writeStream.
	(all := ChangeSet allChangeSets copy) do:
		[:sel | aStream nextPutAll: (sel name contractTo: 40); cr].
	self allSubInstancesDo:
		[:sel | aStream nextPutAll: (sel file name); cr.
			all addLast: sel].
	aStream skip: -1.
	index := (UIManager default chooseFrom: (aStream contents substrings)).
	index > 0 ifTrue: [
		self selectConflicts: (all at: index)].
