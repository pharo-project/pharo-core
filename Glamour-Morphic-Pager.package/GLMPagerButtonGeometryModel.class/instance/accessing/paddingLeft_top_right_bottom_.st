paddingLeft: left top: top right: right bottom: bottom

	left ifNotNil: [ paddingLeft := left ].
	top ifNotNil: [ paddingTop := top ].
	right ifNotNil: [ paddingRight := right ].
	bottom ifNotNil: [ paddingBottom := bottom ].
	
	self notifyGeometryChanged.