addDeferredStartupAction: aBlock
	"Add the monadic or nulladic block to the list of actions that we will be performed immediately after the startup is totally executed."
	
	deferredStartupActions 
		ifNil: [deferredStartupActions := OrderedCollection new].
	deferredStartupActions add: aBlock.
	