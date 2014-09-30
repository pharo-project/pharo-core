initialize

	self image: GLMPagerButtonImageModel new.
	self label: GLMPagerButtonLabelModel new.
	self fontModel: GLMPagerButtonFontModel new.
	self geometry: GLMPagerButtonGeometryModel new.
	self buttonModel: GLMPagerButtonModel new.
	self buttonRenderer: GLMPagerButtonRenderer new.
	
	super initialize.
		
	self borderWidth: 0.
	
	self color: (Color transparent).