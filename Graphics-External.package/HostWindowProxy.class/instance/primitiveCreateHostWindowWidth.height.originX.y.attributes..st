system primitives
primitiveCreateHostWindowWidth: w height: h originX: x y: y attributes: list
"create and open a host window. list is a ByteArray list of window attributes in some platform manner. See subclasses for information"
	<primitive: 'primitiveCreateHostWindow' module: 'HostWindowPlugin'>
	^self error: 'Unable to create Host Window'