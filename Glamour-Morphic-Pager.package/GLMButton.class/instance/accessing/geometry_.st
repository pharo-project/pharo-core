geometry: aGeometryModel
	geometryModel := aGeometryModel.
	
	geometryModel announcer weak
		on: GLMPagerButtonGeometryChanged send: #onGeometryChanged to: self.