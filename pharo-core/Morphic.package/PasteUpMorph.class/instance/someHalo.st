world state
someHalo
	"Return some halo that's currently visible in the world"
	^ (self haloMorphs) 
		ifEmpty: [] 
		ifNotEmpty: [:m |  m first]