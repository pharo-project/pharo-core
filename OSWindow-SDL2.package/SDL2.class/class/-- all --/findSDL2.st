findSDL2
	"In Linux, try to use the linked version."
	OSSDL2Driver hasPlugin.
	
	"Look for SDL2 using different names."
	#( 0
	SDL2
	libSDL2.so
	SDL2.dll
	) do: [ :nm | [(self checkLibraryName: nm) ifTrue: [ ^ nm ] ] ifError: [nil] ].
	self error: 'Failed to find SDL2 library.'