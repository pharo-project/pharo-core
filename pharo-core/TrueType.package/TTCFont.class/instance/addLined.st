private
addLined

	self addLined: self.
	self derivativeFonts do: [:e |
		e ifNotNil: [self addLined: e].
	].
