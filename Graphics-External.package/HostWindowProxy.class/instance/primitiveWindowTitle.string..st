system primitives
primitiveWindowTitle: id string: titleString
"Set the label of the title bar of the window"
	<primitive: 'primitiveHostWindowTitle' module: 'HostWindowPlugin'>
	^self error: 'Unable to set title of Host Window'