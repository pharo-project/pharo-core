acceptDroppingMorph: draggedMorph event: event inMorph: source
	| item index |
	
	index := source rowAtLocation: event position.
	item := listHolder contents at: index ifAbsent: [ nil ].
	
	^ self acceptDropBlock valueWithEnoughArguments: { draggedMorph. event. source. item. index }