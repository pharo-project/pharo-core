thread
updateTree

	thread ifNotNil: [ thread terminate ].
	thread := [ WorldState addDeferredUIMessage: [ 
			criticModel updateList. 
			rulesModel updateTree.]] fork.