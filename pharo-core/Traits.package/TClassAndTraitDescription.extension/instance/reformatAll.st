compiling
reformatAll
	"Reformat all methods in this class.
	Leaves old code accessible to version browsing"
	self selectorsDo: [:sel | self reformatMethodAt: sel]