private-handle registry
deregister: aHandle
	Registry ifNotNil: [ :reg | | finalizer |
		finalizer := reg remove: aHandle ifAbsent: [].
		finalizer ifNotNil: [ finalizer executor beNull.
 			self knownHandles remove: aHandle ifAbsent: [ ] ] ]