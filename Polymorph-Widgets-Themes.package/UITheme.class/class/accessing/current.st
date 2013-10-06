current
	"Answer the current ui theme.
	WARNING: Direct access to this method is ill-adviced, use Smalltalk ui theme instead."

	^Current ifNil: [
		Current := PharoTheme newDefault.
		Current ]