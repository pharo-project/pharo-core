text
	^ (self groupManager elementsToAdd collect: [ :elt | elt name ]) asArray sort joinUsing: Character cr