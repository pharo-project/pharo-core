tests
testInstallSourceFiles
	| codeLoader reference |
	
	reference := FileSystem disk workingDirectory / 'codeLoad1.st'.
	[  reference writeStreamDo: [ :stream | stream nextPutAll: self class fakeClassTemplate; cr ].
	   codeLoader := BasicCodeLoader new.
	   codeLoader loadSourceFiles: {'codeLoad1.st'}.
	   codeLoader installSourceFiles.
	   self assert:  (Smalltalk at: #FakeCodeLoaded ifAbsent: [ nil ]) notNil ]
	ensure: [ reference delete ]