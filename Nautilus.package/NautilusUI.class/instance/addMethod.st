widget - method
addMethod
	
	self okToChange ifFalse: [ 
		sourceTextArea flash.
		^ self ].
	sourceTextArea setText: ''.
	self giveFocusTo: sourceTextArea.