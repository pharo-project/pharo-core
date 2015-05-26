smallBackIconGray
	^ icons
			at: #'smallBackGray'
			ifAbsentPut:[ self smallBackIcon asGrayScaleWithAlpha ].