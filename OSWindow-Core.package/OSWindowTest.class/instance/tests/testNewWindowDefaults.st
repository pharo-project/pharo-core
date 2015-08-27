testNewWindowDefaults

	| window |
	
	window := OSWindow new.

	[
		self assert: (window isValid).
		self assert: window extent = OSWindowAttributes defaultExtent.
	] ensure: [ window destroy ]
		
	