updateWith: aValue

	self isSetting ifFalse: [ 
		self isSetting: true.
		self internUpdateWith: aValue.
		self isSetting: false ]