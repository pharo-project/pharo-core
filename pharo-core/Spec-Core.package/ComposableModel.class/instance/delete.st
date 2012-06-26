private
delete

	self widget
		ifNotNil: [ self widget owner ifNotNil: [:o | o delete ]]