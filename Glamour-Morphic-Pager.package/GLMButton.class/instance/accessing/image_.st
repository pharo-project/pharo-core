image: anImageModel
	imageModel := anImageModel.
	
	imageModel state announcer weak
		when: GLMPagerButtonImageUpdated send: #onImageUpdated to: self.