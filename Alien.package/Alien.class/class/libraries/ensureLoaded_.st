ensureLoaded: aLibraryName "<String> ^<Alien>"
	^LoadedLibraries
		at: aLibraryName
		ifAbsentPut: [(Alien new: 4)
						unsignedLongAt: 1
							put: (self primLoadLibrary: aLibraryName);
						yourself]