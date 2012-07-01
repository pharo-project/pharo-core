system primitives
primitiveUpdateHostWindow: id bitmap: bitmap width: w height: h depth: d left: l
right: r top: t bottom: b 
	"Force the pixels to the screen. The bitmap details and affected area are given
explicitly to avoid dependence upon any object structure"
	<primitive: 'primitiveShowHostWindowRect' module:'HostWindowPlugin'>
	^self windowProxyError: 'update'