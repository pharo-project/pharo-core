text

	^ (self groupManager elementsToAdd collect: [:elt | elt printString ]) asArray sort joinUsing: Character cr