addHalo: evt
	| halo prospectiveHaloClass |
	
	Smalltalk tools userManager canShowMorphHalo
		ifFalse: [ ^ self ].
	prospectiveHaloClass := Smalltalk globals at: self haloClass ifAbsent: [ HaloMorph ].
	halo := prospectiveHaloClass new.
	halo bounds: (halo worldBoundsForMorph: self).
	halo popUpFor: self event: evt.
	^ halo