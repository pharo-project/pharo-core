debug and other
removeMouseUpAction

	self primaryHand showTemporaryCursor: nil.
	self removeProperty: #mouseUpCodeToRun.
	#(mouseUp mouseEnter mouseLeave mouseDown) do: [ :sym |
		self
			on: sym 
			send: #yourself 
			to: nil.
	]

