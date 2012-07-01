*Polymorph-Widgets
worldTaskbar
	"Answer the world taskbar or nil if none."

	^self world submorphThat: [:m | m isTaskbar] ifNone: [] 