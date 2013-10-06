hasTranslucentColor
	"Overridden from BorderedMorph to test backgroundColor instead of (text) color."

	backgroundColor ifNil: [^ true].
	(backgroundColor isColor and: [backgroundColor isTranslucentColor]) ifTrue: [^ true].
	(borderColor isColor and: [borderColor isTranslucentColor]) ifTrue: [^ true].
	^ false
