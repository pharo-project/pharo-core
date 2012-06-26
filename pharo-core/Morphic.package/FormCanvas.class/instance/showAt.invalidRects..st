other
showAt: pt invalidRects: updateRects
	| blt |
	blt := (BitBlt current toForm: Display)
		sourceForm: form;
		combinationRule: Form over.
	updateRects do:
		[:rect |
		blt sourceRect: rect;
			destOrigin: rect topLeft + pt;
			copyBits]