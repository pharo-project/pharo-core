postscript generation
setColorspaceOn:aStream
	self depth = 1 ifTrue:[
		aStream print:'/DeviceRGB setcolorspace 0 setgray'; cr.
	]
	ifFalse:[
	aStream print:'[ /Indexed /DeviceRGB ';
	write:self colors size-1;
	print:' <'.
	(self colormapIfNeededForDepth: 32 ) storeBits:20 to:0 on:aStream.
	aStream print:'> ] setcolorspace'; cr.].
