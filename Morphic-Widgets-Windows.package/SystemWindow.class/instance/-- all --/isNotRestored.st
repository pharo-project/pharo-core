isNotRestored
	"Answer whether we are maximised or minimised."

	^self isMinimized or: [self isMaximized]