roundRectangle: aRect width: width height: height 
	^ self
		apiRoundRect: self
		with: aRect left
		with: aRect top
		with: aRect right
		with: aRect bottom
		with: width
		with: height