testDefaults
	| attributes |
	attributes := OSWindowAttributes new.
	self assert: attributes bounds = attributes class defaultBounds.
	self assert: attributes fullscreen  = attributes class defaultFullscreen.
	self assert: attributes title = attributes class defaultTitle.