acceptDroppingMorph: draggedMorph event: event inMorph: source
	| item index |
	
	index := source rowAtLocation: event position.
	item := self model getList at: index ifAbsent: [ nil ].
	
	^ self acceptDropBlock valueWithEnoughArguments: { draggedMorph. event. source. item. index }