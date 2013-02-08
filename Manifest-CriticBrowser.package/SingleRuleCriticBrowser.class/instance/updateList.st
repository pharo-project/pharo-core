thread
updateList
self criticsOf: rule.
	thread ifNotNil: [ thread terminate ].
	thread := [ WorldState addDeferredUIMessage: [ 
			
			criticsModel updateList ]] fork.