image: anImageModel
	imageModel := anImageModel.
	
	imageModel state announcer weak
		on: GLMPagerButtonImageUpdated send: #onImageUpdated to: self.