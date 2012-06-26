exceptionDescription
defaultAction
	| filedir ref |
	filedir := UIManager default chooseDirectory: 'Where is ', origin, '?'.
	ref := filedir ifNotNil: [FileSystem disk referenceTo: filedir fullName].
	self resume: ref