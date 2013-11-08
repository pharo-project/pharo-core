delete

	self widget
		ifNotNil: [:widget | window value
						ifNil: [ widget delete ]
						ifNotNil: [:o | o delete ]]