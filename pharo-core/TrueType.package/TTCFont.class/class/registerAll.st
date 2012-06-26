other
registerAll
"
	TTCFont registerAll
"

	TextStyle allInstancesDo: [:e |
		(e fontArray first isMemberOf: TTCFont) ifTrue: [
			self register: e fontArray at: e fontArray first familyName asSymbol.
		].
	].
