onSnapshot: resuming
	"The resuming argument is true when image boots from disk,
	and false, if user just did an image snapshot."
	
	"if we resuming, check if we're still interactive "
	
	resuming ifTrue: [
		Smalltalk isInteractive ifFalse: [
			^ self nonInteractiveManager onSnapshot: resuming ].
		Smalltalk isHeadless ifTrue: [
			^ self headlessManager onSnapshot: resuming ]].

	SystemWindow wakeUpTopWindowUponStartup