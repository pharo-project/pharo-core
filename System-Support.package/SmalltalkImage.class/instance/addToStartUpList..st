startup list
addToStartUpList: aClass
	"This will add a ref to this class at the END of the startUp list."
	"No-op if already in the list."

	(StartUpList includes: aClass name) ifFalse: [StartUpList addLast: aClass name]