height: anObject
	<brickBuilderProperty: #Geometry name: 'Height' as: #asInteger getter: #height model: #GLMUIBuilderTextFieldProperty>

	self privateHeight: anObject.
	self vResizing: #rigid.
	self vPercent: 0.
	self updateHeight