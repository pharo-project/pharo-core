changeColorOf: aMorph rampIndex: rampIndex
	| originalColor |
	originalColor := (colorRamp at: rampIndex) value.
	UIManager default chooseColor: originalColor for: [:color |
		self changeColorAt: rampIndex  to:  color.
		aMorph changed]
