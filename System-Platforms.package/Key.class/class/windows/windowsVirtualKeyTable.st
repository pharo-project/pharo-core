windowsVirtualKeyTable

	WindowsVirtualKeyTable ifNil: [ self initializeWindowsVirtualKeyTable. ].
	^WindowsVirtualKeyTable