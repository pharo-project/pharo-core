testSequenceIfEmptyifNotEmptyDo
	"self debug #testSequenceIfEmptyifNotEmptyDo"
	
	self assert: (self nonEmpty 
					ifEmpty: [false]
					ifNotEmptyDo: [:s | (self accessValuePutInOn: s) = self valuePutIn]).