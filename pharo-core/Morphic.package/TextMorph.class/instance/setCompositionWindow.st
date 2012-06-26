editing
setCompositionWindow

	| hand |
	hand := self primaryHand.
	hand ifNotNil: [hand compositionWindowManager keyboardFocusForAMorph: self].
