enumerating
allDirectories
	"Return all the directories recursively nested in the receiver."
	^ self allChildren reject: [:each | each isFile]