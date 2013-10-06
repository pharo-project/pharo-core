highLightBitmaps
	"Quickly return a Bitblt-ready raw colorValue for highlighting areas."
	HighLightBitmaps isNil ifTrue:[ self initializeHighLights ].
	^ HighLightBitmaps 