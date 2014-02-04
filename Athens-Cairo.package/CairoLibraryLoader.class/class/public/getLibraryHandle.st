getLibraryHandle

	(NativeBoost sessionChanged: session) ifTrue: [
		libHandle := self loadCairoLibrary.
		session := NativeBoost uniqueSessionObject.
	].

	^ libHandle
	