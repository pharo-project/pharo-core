other
removeAllDerivatives
"
	self removeAllDerivatives
"

	self allInstances do: [:s |
		s textStyle ifNotNil: [
			s textStyle fontArray do: [:f |
				f derivativeFont: nil at: 0.
			].
		].
	].
