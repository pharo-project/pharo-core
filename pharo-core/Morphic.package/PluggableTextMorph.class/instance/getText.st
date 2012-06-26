model access
getText
	"Retrieve the current model text"

	| newText |
	getTextSelector ifNil: [^Text new].
	newText := model perform: getTextSelector.
	newText ifNil: [^Text new].
	^newText shallowCopy