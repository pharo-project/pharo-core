text
	^ (self groupManager elementsToRemove collect: [ :elt | elt name ]) asArray sort joinUsing: Character cr