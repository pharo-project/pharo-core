startup list
addToShutDownList: aClass
	"This will add a ref to this class at the BEGINNING of the shutDown list."
	"No-op if already in the list."
	
	(ShutDownList includes: aClass name) ifFalse: [ShutDownList addFirst: aClass name]