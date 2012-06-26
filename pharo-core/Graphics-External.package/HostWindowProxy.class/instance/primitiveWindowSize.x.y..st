system primitives
primitiveWindowSize: id x: x y: y
"Set the size of the window, just like primitiveScreenSize. Return the actually
achieved size"
	<primitive: 'primitiveHostWindowSizeSet' module: 'HostWindowPlugin'>
	^self windowProxyError: 'set size'