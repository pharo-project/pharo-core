path access
fullNameFor: fileName
	"Return a corrected, fully-qualified name for the given file name. If the given name is already a full path (i.e., it contains a delimiter character), assume it is already a fully-qualified name. Otherwise, prefix it with the path to this directory. In either case, correct the local part of the file name."
	fileName ifNil:[^fileName].
	"Check for fully qualified names"
	((fileName size >= 2 and: [fileName first isLetter and: [fileName second = $:]])
		or: [(fileName beginsWith: '\\') and: [(fileName occurrencesOf: $\) >= 2]])
			ifTrue:[^fileName].
	^super fullNameFor: fileName