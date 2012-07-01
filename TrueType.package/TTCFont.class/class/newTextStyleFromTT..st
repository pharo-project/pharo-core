instance creation
newTextStyleFromTT: description 
	"Create a new TextStyle from specified TTFontDescription instance."

	| array |
	array := self pointSizes collect: 
					[:pt | | f | 
					f := self new.
					f ttcDescription: description.
					f pointSize: pt].
	^self reorganizeForNewFontArray: array name: array first name asSymbol