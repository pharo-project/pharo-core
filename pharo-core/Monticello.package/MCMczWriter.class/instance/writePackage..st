visiting
writePackage: aPackage
	self addString: (self serializePackage: aPackage) at: 'package'