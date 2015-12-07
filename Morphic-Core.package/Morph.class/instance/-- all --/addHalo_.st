addHalo: evt
	| halo |
	
	(UserManager default canShowMorphHalo and: [ self halosEnabled ])
		ifFalse: [ ^ self ].
		
	halo := (Smalltalk globals at: self haloClass ifAbsent: [ HaloMorph ]) new.
	halo bounds: (halo worldBoundsForMorph: self).
	halo popUpFor: self event: evt.
	^ halo