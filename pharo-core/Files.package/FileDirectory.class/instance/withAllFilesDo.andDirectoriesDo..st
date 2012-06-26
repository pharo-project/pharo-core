searching
withAllFilesDo: fileStreamBlock andDirectoriesDo: directoryBlock

	"For the receiver and all it's subdirectories evaluate directoryBlock.
	For a read only file stream on each file within the receiver 
	and it's subdirectories evaluate fileStreamBlock."

	| todo dir |

	todo := OrderedCollection with: self.
	[todo size > 0] whileTrue: [
		dir := todo removeFirst.
		directoryBlock value: dir.
		dir fileNames do: [:n | 
			fileStreamBlock value: 
				(FileStream readOnlyFileNamed: (dir fullNameFor: n))].
		dir directoryNames do: [:n | 
			todo add: (dir directoryNamed: n)]]

