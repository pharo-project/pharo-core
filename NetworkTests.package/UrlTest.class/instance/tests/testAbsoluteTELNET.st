testAbsoluteTELNET
	
	url := 'telNet:chaos.resnet.gatech.edu#goo' asUrl.

	self assert: url scheme = 'telnet'.
	self assert: url host = 'chaos.resnet.gatech.edu'.
	self assert: url fragment = 'goo'.	
