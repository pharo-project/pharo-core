image: aForm at: aPoint sourceRect: sourceRect rule: rule
"AFAIK only used by HandMorph and probably never used for a transformed canvas"
"So, we may be save to used BitBlitting instead of an athens pattern paint"
self flag:#MayBeWrong.
	(BitBlt
		destForm: self form
		sourceForm: aForm
		fillColor: nil
		combinationRule: rule
		destOrigin: aPoint
		sourceOrigin: sourceRect origin
		extent: sourceRect extent
		clipRect:self clipRect) copyBits