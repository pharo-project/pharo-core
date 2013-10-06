extraRootsRegistry

	^ extraRootsRegistry ifNil: [
	
		rootsCell := self allocate: (self pointerSize).
		extraRootsRegistry := NBExtraRootsRegistry newWithCell: rootsCell
	]