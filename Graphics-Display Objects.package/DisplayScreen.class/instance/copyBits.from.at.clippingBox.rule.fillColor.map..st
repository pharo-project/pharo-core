displaying
copyBits: rect from: sf at: destOrigin clippingBox: clipRect rule: cr fillColor: hf map: map
	((BitBlt current
		destForm: self
		sourceForm: sf
		fillColor: hf
		combinationRule: cr
		destOrigin: destOrigin
		sourceOrigin: rect origin
		extent: rect extent
		clipRect: (clipRect intersect: clippingBox)) colorMap: map) copyBits