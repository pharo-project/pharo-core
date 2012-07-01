stdio
standardIOStreamNamed: moniker forWrite: forWrite
	"Create if necessary and store default stdin, stdout and other files based on the their names"
	
	| index |
	
	self flag: #todo. "This is an ugly hack, while waiting for a real fix for windows. There  several problems with this approach, but it allow us to run tests, etc."
	OSPlatform isWin32 
		ifTrue: [ ^MultiByteFileStream forceNewFileNamed: moniker asString ]. 	
	
	index := #(stdin stdout stderr) identityIndexOf: moniker.
	^((StdioFiles ifNil: [ StdioFiles := Array new: 3 ]) at: index)
		ifNil: [
			StdioFiles
				at: index 
				put: (
					(TheStdioHandles at: index)
						ifNil: [ ^self error: moniker, ' is unavailable' ]
						ifNotNil: [ :handle |
							MultiByteFileStream newForStdio
								openOnHandle: handle
								name: moniker
								forWrite: forWrite ]) ]
