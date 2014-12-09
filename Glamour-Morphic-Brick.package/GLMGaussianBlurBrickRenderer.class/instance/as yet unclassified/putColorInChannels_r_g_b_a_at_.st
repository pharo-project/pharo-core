putColorInChannels: aColor r: r g: g b: b a: a at: index
	
	r atWrap: index put: aColor red.
	g atWrap: index put: aColor green.
	b atWrap: index put: aColor blue.
	a atWrap: index put: aColor alpha.