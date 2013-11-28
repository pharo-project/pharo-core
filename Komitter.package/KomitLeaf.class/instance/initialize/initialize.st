initialize

	super initialize.
	
	self children: [ #() ].
	self hasContentToShow: true.
	self whenSelectedChanged: [ :aBoolean | self parentNode ifNotNil: [ :parent | parent checkChildren ] ]