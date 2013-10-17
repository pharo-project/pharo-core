smallForwardIconGray
	"Private - Generated method"
	^ icons
			at: #'smallForwardGray'
			ifAbsentPut:[ self smallForwardIcon asGrayScaleWithAlpha ].