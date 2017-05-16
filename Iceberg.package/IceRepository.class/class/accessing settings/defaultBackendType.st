defaultBackendType
	^ DefaultBackendType ifNil: [ DefaultBackendType := #IceLibgitLocalRepository ]
