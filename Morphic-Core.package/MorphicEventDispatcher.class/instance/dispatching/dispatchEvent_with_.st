dispatchEvent: anEvent with: aMorph
	"Dispatch the given event for a morph that has chosen the receiver to dispatch its events. "
	"
	In case of bugs, use ensure: [  morph := nil ].
	We don't clear the morph reference, since usually dispatcher is short living object, which won't affect
	the liveness of morphs..
	"
	morph := aMorph.
	^ anEvent sentTo: self 