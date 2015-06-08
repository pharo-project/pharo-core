shouldCondenseMethod: aMethod
	"Only write methods with changes in the current file (not .sources)"
	^ aMethod hasSourceCodeInChangesFile