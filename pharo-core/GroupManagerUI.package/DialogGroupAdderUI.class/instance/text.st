build items
text

	^ (self groupManager elementsToAdd collect: [:elt | elt prettyName ]) asArray joinUsing: '.
'