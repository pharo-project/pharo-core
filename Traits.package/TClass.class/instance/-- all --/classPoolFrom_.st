classPoolFrom: aClass
	"share the classPool with aClass."
	self deprecated: 'just use the accessor for classPool' on: '2 July 2014' in: 'Pharo40'.
	self classPool: aClass classPool.