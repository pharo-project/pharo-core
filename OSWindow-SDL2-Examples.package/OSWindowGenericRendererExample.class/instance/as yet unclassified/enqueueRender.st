enqueueRender
	OSWindowRenderThread enqueueOperation: [ 
		renderer ifNotNil: [ self redrawAndPresent ].
	]