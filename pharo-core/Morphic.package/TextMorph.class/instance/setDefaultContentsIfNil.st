private
setDefaultContentsIfNil
	"Set the default contents"

	| toUse |
	text ifNil:
		[toUse := self valueOfProperty: #defaultContents.
		toUse ifNil: [toUse :='abc' asText "allBold"].	"try it plain for a while"
		text := toUse]