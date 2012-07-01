extraction
extractInDirectory: aDirectory overwrite: overwriteAll
	"Extract this entry into the given directory. Answer #okay, #failed, #abort, or #retryWithOverwrite."
	| path fileDir file index localName |
	path := fileName findTokens:'/'.
	localName := path last.
	fileDir := path allButLast inject: aDirectory into:[:base :part| base / part].
	fileDir assureExistence.
	file := [fileDir newFileNamed: localName] on: FileExistsException do:[:ex| ex return: nil].
	file ifNil:[
		overwriteAll ifFalse:[
			[index := UIManager default chooseFrom: {
						'Yes, overwrite'. 
						'No, don''t overwrite'. 
						'Overwrite ALL files'.
						'Cancel operation'
					} lines: #(2) title: fileName, ' already exists. Overwrite?'.
			index == nil] whileTrue.
			index = 4 ifTrue:[^#abort].
			index = 3 ifTrue:[^#retryWithOverwrite].
			index = 2 ifTrue:[^#okay].
		].
		file := [fileDir forceNewFileNamed: localName] on: Error do:[:ex| ex return].
		file ifNil:[^#failed].
	].
	self extractTo: file.
	file close.
	^#okay