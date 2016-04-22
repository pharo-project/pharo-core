createDrawingProcess
	^ [ 
	[ 
	(Delay forMilliseconds: 1000 / self maxFPS) wait.
	self redrawAndPresent ] repeat ] fork