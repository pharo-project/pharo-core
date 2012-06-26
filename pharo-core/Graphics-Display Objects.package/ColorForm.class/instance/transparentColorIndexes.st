postscript generation
transparentColorIndexes
	^(1 to: colors size) select: [ :index | (colors at:index) isTransparent ].
