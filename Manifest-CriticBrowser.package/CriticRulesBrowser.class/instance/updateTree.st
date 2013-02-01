thread
updateTree

	thread ifNotNil: [ thread terminate ].
	thread := [ WorldState addDeferredUIMessage: [ 
			rulesModel updateTree ]] fork.