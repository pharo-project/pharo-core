fonts and font indexes
discardOtherSizes
	"This method trys to discard the fonts in non-standard size.  If the size is still in use, there will be a problem."
	| newArray |
	self isTTCStyle ifFalse: [ ^ self ].
	newArray := fontArray select: [ :s | TTCFont pointSizes includes: s pointSize ].
	self newFontArray: newArray

	"(TextConstants at: #ComicSansMS) discardOtherSizes"