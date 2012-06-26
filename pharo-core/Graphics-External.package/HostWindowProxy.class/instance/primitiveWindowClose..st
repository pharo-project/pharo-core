system primitives
primitiveWindowClose: id
"Close the window"
	<primitive: 'primitiveCloseHostWindow' module: 'HostWindowPlugin'>
	^self windowProxyError: 'close'