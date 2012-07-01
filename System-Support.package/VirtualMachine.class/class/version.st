GC
version
	"Return the version number string of the Virtual machine built"
	"
	Smalltalk vm version
	"
	^ ((1007 to: 1009) collect: [:n| self getSystemAttribute: n]) asCommaString