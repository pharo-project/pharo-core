events
onSnapshot: resuming
	"The resuming argument is true when image boots from disk,
	and false, if user just did an image snapshot."
	
	resuming ifTrue: [
		Smalltalk isInteractive ifFalse: [
			^ self nonInteractiveManager onSnapshot: resuming ].
		Smalltalk isHeadless ifFalse: [
			uiManager beDefault.   "restore old, or nil, so it will be set in #default "
			UIManager default onSnapshot: resuming]. 
		^ self].
	
	
	" this flag set to true only if we are saving a snapshot before quitting "
	doNotQuitOnRestart ifTrue: [
		Smalltalk snapshot: false andQuit: true].