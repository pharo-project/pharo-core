cleaning
cleanUpMethods
	"Make sure that all methods in use are restarted"
	"ScriptLoader new cleanUpMethods"

	WeakArray restartFinalizationProcess.
	MethodChangeRecord allInstancesDo: [:x | x noteNewMethod: nil].
	WorldState allInstancesDo: [ :ws | ws convertAlarms; convertStepList; resetWorldMenu].
	WorldState allInstancesDo: [ :ws | ws instVarNamed: 'menuBuilder' put: nil ].
	ExternalDropHandler initialize.
	ScrollBar initializeImagesCache.
	GradientFillStyle initPixelRampCache.
	ProcessBrowser initialize.
	Smalltalk garbageCollect.
	Delay startTimerEventLoop