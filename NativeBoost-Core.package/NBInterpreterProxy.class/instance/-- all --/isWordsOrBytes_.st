isWordsOrBytes: oop
	"Answer true if the contains only indexable words or bytes (no oops). See comment in formatOf:"
	"Note: Excludes CompiledMethods."
	
	^ self simpleCall
