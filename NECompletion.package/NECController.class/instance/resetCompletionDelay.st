private
resetCompletionDelay
	"Open the popup after 100ms and only after certain characters"
	self stopCompletionDelay.
	self isMenuOpen ifTrue: [ ^ self ].
	editor atCompletionPosition ifFalse: [ ^ self ].
	
	completionDelay := [
			(Delay forMilliseconds: 500) wait.
			WorldState addDeferredUIMessage: [ 
				editor atCompletionPosition ifTrue: [ self openMenu ]]
		] fork.
	