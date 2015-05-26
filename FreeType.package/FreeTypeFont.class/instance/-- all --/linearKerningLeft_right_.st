linearKerningLeft: leftChar right: rightChar
	| f  l r |

	f := self face.
	f hasKerning ifFalse:[^0].
	l := leftChar asUnicode.
	r := rightChar asUnicode.
	(self face charmaps includes:'unic')
		ifTrue:[
			self isSymbolFont 
				ifTrue:[
					(l asInteger >= 16r20 and:[l asInteger <= 16rFF ])
						ifTrue:[l := (Character value: l asInteger + 16rF000) asUnicode].
					(r asInteger >= 16r20 and:[ r asInteger <= 16rFF ])
						ifTrue:[r := (Character value: r asInteger + 16rF000) asUnicode]]]
		ifFalse:[
			(self face charmaps includes:'armn')
				ifTrue:[ "select apple roman char map, and map characters from unicode to mac encoding"
					self face setCharMap:'armn'.
					(l asInteger >= 16r20 and:[l asInteger <= 16rFF ])
						ifTrue:[l := (Character value: l asInteger) unicodeToMacRoman].
					(r asInteger >= 16r20 and:[ r asInteger <= 16rFF ])
						ifTrue:[r := (Character value: r asInteger) unicodeToMacRoman]]].
	^(f kerningLeft: l right: r) x asFloat *  self pixelSize / f unitsPerEm