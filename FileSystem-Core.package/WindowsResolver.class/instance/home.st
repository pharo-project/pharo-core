origins
home
	| pathString |
	pathString := self class primitiveGetUntrustedUserDirectory.
	^ (self resolveString: pathString) parent parent