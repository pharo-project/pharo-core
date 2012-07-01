bugs
testPokerUnhibernateBug
	"self run: #testPokerUnhibernateBug"

	| bitBlt |
	bitBlt := BitBlt bitPokerToForm: Display.
	bitBlt sourceForm hibernate.
	self shouldnt:[bitBlt pixelAt: 1@1 put: 0] raise: Error.