enumeration
fullNamesOfAllFilesInSubtree
	"Answer a collection containing the full names of all the files in the subtree of the file system whose root is this directory."

	| result todo dir |
	result := OrderedCollection new: 100.
	todo := OrderedCollection with: self.
	[todo size > 0] whileTrue: [
		dir := todo removeFirst.
		dir fileNames do: [:n | result add: (dir fullNameFor: n)].
		dir directoryNames do: [:n | todo add: (dir directoryNamed: n)]].
	^ result asArray
