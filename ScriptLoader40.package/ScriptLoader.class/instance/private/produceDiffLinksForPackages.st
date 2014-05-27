produceDiffLinksForPackages
	"self defaultMCWaitingFolder allFileNames"
	"self new produceDiffLinksForPackages"
	
	| filenames |
	filenames := self waitingFolderMCZFiles.
	filenames := filenames reject: [:each | 'ScriptLoader*' match: each ].
	^ filenames collect: [:name |
			 self diffServerRootString, (name copyUpToLast: $.) , '.diff'  ]
		