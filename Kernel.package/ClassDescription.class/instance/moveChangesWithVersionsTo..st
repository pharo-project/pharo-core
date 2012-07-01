filein/out
moveChangesWithVersionsTo: newFile 
	"Used in the process of condensing changes, this message requests that 
	the source code of all methods of the receiver that have been changed 
	should be moved to newFile."

	| changes |
	changes := self selectors select: [:sel | (self methodDict at: sel) fileIndex > 1].
	self fileOutChangedMessagesHistorically: changes
		on: newFile
		moveSource: true
		toFile: 2