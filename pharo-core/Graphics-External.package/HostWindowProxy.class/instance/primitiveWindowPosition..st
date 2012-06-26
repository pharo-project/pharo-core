system primitives
primitiveWindowPosition: id
"Find the topleft corner of the window"
	<primitive: 'primitiveHostWindowPosition' module: 'HostWindowPlugin'>
	^self windowProxyError: 'get position'