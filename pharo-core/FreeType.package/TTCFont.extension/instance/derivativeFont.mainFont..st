*FreeType-addition
derivativeFont: aNewlyCreatedDerivativeFont mainFont: aMainFont

	self derivativeFont: aNewlyCreatedDerivativeFont at: aMainFont emphasis.
	aNewlyCreatedDerivativeFont emphasis: aMainFont emphasis.
	aNewlyCreatedDerivativeFont lineGlyph: (aMainFont ttcDescription at: $_).