testAbsoluteTELNET
	
	url := 'telNet:chaos.resnet.gatech.edu#goo' asUrl.

	self assert: url schemeName = 'telnet'.
	self assert: url locator = 'chaos.resnet.gatech.edu'.
	self assert: url fragment = 'goo'.	
