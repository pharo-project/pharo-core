gcpointer
	"Same as #pointer (see its comment for detals), but contents are garbage collected automatically"
	^ (ExternalAddress gcallocate: self size)
		pointerAt: 1 put: self;
		yourself