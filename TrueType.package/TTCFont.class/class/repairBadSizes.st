other
repairBadSizes
	"There was a bug that would cause the TTCFonts to generate incorrectly sized glyphs.
	By looking at the dimensions of cached forms,
	we can tell whether the incorrect height logic was used.
	If it was, change the point size of the font and its derivatives.
	
	Note that this is probably pointless to call after the new code has been loaded; it's here for documentation (it should be called from the CS preamble instead)."

	"TTCFont repairBadSizes"
	| repaired |
	repaired := OrderedCollection new.
	TTCFont allInstancesDo: [ :font | | computedScale cached newPointSize description desiredScale |
		cached := (font cache copyFrom: $A asciiValue + 1 to: $z asciiValue + 1)
			detect: [ :f | f notNil ] ifNone: [].
		cached := cached ifNil: [  font formOf: $A ] ifNotNil: [ cached value ].
		description := font ttcDescription.
		desiredScale := cached height asFloat / (description ascender - description descender).
		computedScale := font pixelSize asFloat / font ttcDescription unitsPerEm.
		(((computedScale / desiredScale) - 1.0 * cached height) abs < 1.0) ifFalse: [
			newPointSize := (font pointSize * desiredScale / computedScale) rounded.
			font pointSize: newPointSize; flushCache.
			repaired add: font.
			font derivativeFonts do: [ :df | df ifNotNil: [
				df pointSize: newPointSize; flushCache.
				repaired add: df. ]].
		].
	].
	repaired isEmpty ifFalse: [ repaired asArray inspect ].
