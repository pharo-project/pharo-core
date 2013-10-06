acceptDroppingMorph: aMorph atIndex: index event: event inMorph: source

	| item |
	item := self getRawItemAt: index.
	
	^ self acceptDropBlock valueWithEnoughArguments: { aMorph. event. source. item. index }