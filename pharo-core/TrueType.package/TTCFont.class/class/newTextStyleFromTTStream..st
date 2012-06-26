instance creation
newTextStyleFromTTStream: readStream
"
"

	| description |
	description := TTFontDescription addFromTTStream: readStream.
	^ self newTextStyleFromTT: description.
