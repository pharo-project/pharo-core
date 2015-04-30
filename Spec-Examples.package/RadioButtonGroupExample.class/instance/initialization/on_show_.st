on: button show: aMorph

	button whenActivatedDo: [ container addMorph: aMorph ].
	button whenDesactivatedDo: [ container removeMorph: aMorph ]