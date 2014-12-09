geometry: aGeometryModel
	geometryModel := aGeometryModel.
	
	geometryModel announcer weak
		when: GLMPagerButtonGeometryChanged send: #onGeometryChanged to: self.