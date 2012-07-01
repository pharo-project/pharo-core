private
directoryContentsFor: fullPath
	"Return a collection of directory entries for the files and directories in the directory with the given path. See primLookupEntryIn:index: for further details."
	"FileDirectory default directoryContentsFor: ''"

	^Array new: 200 streamContents: [:stream |
		self directoryContentsFor: fullPath do: [:ea | stream nextPut: ea]].