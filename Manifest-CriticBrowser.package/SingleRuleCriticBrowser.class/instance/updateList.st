thread
updateList

	thread ifNotNil: [ thread terminate ].
	thread := [ WorldState addDeferredUIMessage: [ criticsModel updateList ]] fork.