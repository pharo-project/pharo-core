testNewWindowDefaults

	| window |
	self skip. "not yet working on windows"
	
	window := OSWindow new.

	[
		self assert: (window isValid).
		self assert: window extent = window class defaultExtent.
	] ensure: [ window destroy ]
		
	