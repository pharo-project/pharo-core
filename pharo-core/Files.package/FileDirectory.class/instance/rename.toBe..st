file operations
rename: oldFileName toBe: newFileName
	| selection oldName newName |
	"Rename the file of the given name to the new name. Fail if there is no file of the old name or if there is an existing file with the new name."
	"Modified for retry after GC ar 3/21/98 18:09"
	oldName := self fullNameFor: oldFileName.
	newName := self fullNameFor: newFileName.
	(StandardFileStream 
		retryWithGC:[self primRename: oldName asVmPathName to: newName asVmPathName]
		until:[:result| result notNil]
		forFileNamed: oldName) ~~ nil ifTrue:[^self].
	(self fileExists: oldFileName) ifFalse:[
		^self error:'Attempt to rename a non-existent file'.
	].
	(self fileExists: newFileName) ifTrue:[
		selection := UIManager default chooseFrom:#('delete old version' 'cancel')
				title: 'Trying to rename a file to be
', newFileName , '
and it already exists.'.
		selection = 1 ifTrue:
			[self deleteFileNamed: newFileName.
			^ self rename: oldFileName toBe: newFileName]].
	^self error:'Failed to rename file'.