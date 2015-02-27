width: anObject
	<brickBuilderProperty: #Geometry name: 'Width' as: #asInteger getter: #width model: #GLMUIBuilderTextFieldProperty>

	self privateWidth: anObject.
	self hResizing: #rigid.
	self hPercent: 0.
	self updateWidth