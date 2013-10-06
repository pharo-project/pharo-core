getLibraryHandle

	(NativeBoost sessionChanged: session) ifTrue: [
		libHandle := self loadPangoCairoLibrary.
		session := NativeBoost uniqueSessionObject.
	].

	^ libHandle
	