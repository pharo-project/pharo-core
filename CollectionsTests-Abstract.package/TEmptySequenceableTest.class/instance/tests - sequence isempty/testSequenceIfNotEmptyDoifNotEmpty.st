testSequenceIfNotEmptyDoifNotEmpty

	self assert: (self nonEmpty 
					ifNotEmptyDo: [:s | (self accessValuePutInOn: s) = self valuePutIn] 
					ifEmpty: [false])