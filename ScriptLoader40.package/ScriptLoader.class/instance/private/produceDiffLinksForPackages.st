produceDiffLinksForPackages
	"self defaultMCWaitingFolder allFileNames"
	"self new produceDiffLinksForPackages"
	
	| filenames |
	filenames := self waitingFolderMCZFiles.
	filenames := filenames reject: [:each | each matchesRegex: self theScriptLoaderPackageNameRegexNoTest ].
	^ filenames collect: [:name |
			 self diffServerRootString, (name copyUpToLast: $.) , '.diff'  ]
		