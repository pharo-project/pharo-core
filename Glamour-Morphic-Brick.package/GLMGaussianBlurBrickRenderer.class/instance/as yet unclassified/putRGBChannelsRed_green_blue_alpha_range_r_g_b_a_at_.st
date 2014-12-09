putRGBChannelsRed: red green: green blue: blue alpha: alpha range: range r: r g: g b: b a: a at: index
	
	r atWrap: index put: (red asFloat/range).
	g atWrap: index put: (green asFloat/range).
	b atWrap: index put: (blue asFloat/range).
	a atWrap: index put: (alpha asFloat/range).