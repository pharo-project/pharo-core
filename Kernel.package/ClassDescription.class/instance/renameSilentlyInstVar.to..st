instance variables
renameSilentlyInstVar: old to: new
	| i oldName newName |
	oldName := old asString.
	newName := new asString.
	(i := self instVarNames indexOf: oldName) = 0 ifTrue:
		[self error: oldName , ' is not defined in ', self name].
	self allSuperclasses , self withAllSubclasses asOrderedCollection do:
		[:cls | (cls instVarNames includes: newName) ifTrue:
			[self error: newName , ' is already used in ', cls name]].

	self instVarNames replaceFrom: i to: i with: (Array with: newName).
	self replaceSilently: oldName to: newName.	"replace in text body of all methods"