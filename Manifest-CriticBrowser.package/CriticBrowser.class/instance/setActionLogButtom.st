initialization
setActionLogButtom
	|text|
	
	text := 'Do you want to save all false positive and toDo in the Manifests ?
(this action may generate new manifest classes and make dirty your package)' .
	^ [(MorphicUIManager new confirm: text)
		ifTrue: [ cache logInManifest] ]