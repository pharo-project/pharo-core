*NativeBoost-Core
hexDump
	"Utility method, for inspecting the native code"
	^ String streamContents: [:str |
		
		self do: [:each |
			str nextPutAll: (each printStringBase: 16) ] separatedBy: [ str space ] ]