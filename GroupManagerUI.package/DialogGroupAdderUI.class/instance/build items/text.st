text

	^ (self groupManager elementsToAdd collect: [:elt | elt printString ]) asArray joinUsing: '.
'