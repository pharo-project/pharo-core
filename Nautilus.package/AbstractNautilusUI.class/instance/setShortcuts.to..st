shortcuts
setShortcuts: groupSymbol to: anObject
	self setGlobalShorcutsTo: anObject.
	"anObject 
		attachKeymapCategory: groupSymbol 
		targetting: self."
	