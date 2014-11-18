smallJumpIconGray
	^ icons
			at: #'smallJumpGray'
			ifAbsentPut: [ self smallJumpIcon asGrayScaleWithAlpha ].