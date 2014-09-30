renderImageOf: aGLMButton on: aCanvas
	|image|
	
	image := aGLMButton currentImage.
	
	image ifNotNil: [
		aCanvas 
			translucentImage: (aGLMButton resizeImage: image scale: (aGLMButton bounds extent / image extent))
			at: aGLMButton bounds origin.
	].