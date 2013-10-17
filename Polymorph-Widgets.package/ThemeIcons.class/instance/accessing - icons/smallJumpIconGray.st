smallJumpIconGray
	^ icons
			at: #'smallBack'
			ifAbsentPut:[ self smallJumpIcon asGrayScaleWithAlpha ].