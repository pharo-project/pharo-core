transformations
alpha: alphaValue 
	"Answer a new Color with the given amount of opacity ('alpha')."

	alphaValue = 1.0
		ifFalse: [^ TranslucentColor basicNew setRgb: rgb alpha: alphaValue]