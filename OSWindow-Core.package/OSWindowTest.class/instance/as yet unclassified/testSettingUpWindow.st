testSettingUpWindow

	| window |
	
	self skip. "not yet working in Windows"
	window := OSWindow new.
	
	[
		window extent: 100@100.
		self assert: (window extent = (100@100)).	
		self assert: (window isValid).
	] ensure: [ window destroy ].
	self assert: (window isValid not)