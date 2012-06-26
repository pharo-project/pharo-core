accessing
hasTranslucentColor
	"Answer true if this any of this morph is translucent but not transparent."

	(color isColor and: [color isTranslucentColor]) ifTrue: [^ true].
	(borderColor isColor and: [borderColor isTranslucentColor]) ifTrue: [^ true].
	^ false
