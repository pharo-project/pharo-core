smallBackIconGray
	^ icons
			at: #'smallBack'
			ifAbsentPut:[ self smallBackIcon asGrayScaleWithAlpha ].