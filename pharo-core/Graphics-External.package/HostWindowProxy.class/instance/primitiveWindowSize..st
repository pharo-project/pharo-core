system primitives
primitiveWindowSize: id
"Find the size of the window, just like primitiveScreenSize"
	<primitive: 'primitiveHostWindowSize' module: 'HostWindowPlugin'>
	^self windowProxyError: 'get size'