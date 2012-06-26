private
directoryContentsFor: fullPath do: aBlock
	"Do aBlock for the files and directories in the directory with the given path. See primLookupEntryIn:index: for further details."

	| f entryArray index |
	f := fullPath asVmPathName.
	index := 1.
	[(entryArray := self primLookupEntryIn: f index: index) == nil] whileFalse: [
		#badDirectoryPath == entryArray ifTrue: [
			^(InvalidDirectoryError pathName: pathName) signal].
		index := index + 1.
		aBlock value: (DirectoryEntry fromArray: entryArray directory: self) convertFromSystemName]