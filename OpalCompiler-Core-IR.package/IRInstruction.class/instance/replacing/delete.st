delete
	sequence isNil ifTrue: [self error: 'This node doesn''t have a sequence'].
	sequence remove: self.