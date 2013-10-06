toolbar

	self deprecated: 'widget should not be accessed directly'.

	^ self widget
		ifNotNil: [:w | w toolbar ]