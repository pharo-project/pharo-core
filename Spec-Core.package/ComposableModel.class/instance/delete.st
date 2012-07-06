private
delete

	self widget
		ifNotNil: [:widget | window 
						ifNil: [ widget delete ]
						ifNotNil: [:o | o delete ]]