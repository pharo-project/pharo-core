update30485
	"self new update30485"
	self withUpdateLog: '11883 Clean 2 classes from Startup and Shutdownlist each
	https://pharo.fogbugz.com/f/cases/11883
	
11884 Remove global ImageImports
	https://pharo.fogbugz.com/f/cases/11884
	
11882 Small cleanup in Manifest
	https://pharo.fogbugz.com/f/cases/11882'.
	self loadTogether: self script140 merge: false.
	Smalltalk removeFromStartUpList: EditorFindReplaceDialogWindow.
Smalltalk removeFromStartUpList: PasteUpMorph.
Smalltalk removeFromShutDownList:  HttpUrl.
Smalltalk removeFromShutDownList:  PasteUpMorph.
Smalltalk globals removeKey: #ImageImports.
	self flushCaches.
