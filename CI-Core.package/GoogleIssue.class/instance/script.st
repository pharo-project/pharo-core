loading
script

	self hasSlice ifTrue: [ ^ self sliceScript ].
	self hasAttachment ifTrue: [ ^ self attachmentsScript ].
	
	self error: 'Nothing to do'