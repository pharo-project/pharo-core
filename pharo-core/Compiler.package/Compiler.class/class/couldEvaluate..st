accessing
couldEvaluate: anObject
	"Answer true if anObject can be passed to my various #evaluate: methods."
	^anObject isString or: [ anObject isText or: [ anObject isStream ]]