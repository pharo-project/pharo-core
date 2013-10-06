getLibraryHandle

	(NativeBoost sessionChanged: session) ifTrue: [
		libHandle := self loadPangoLibrary.
		session := NativeBoost uniqueSessionObject.
	].

	^ libHandle
	