initialization
setActionLogButtom
	|text|
	
	text := 'Do you want to log all false positive and toDo in the Manifests ?
(this action can generate new manifests classes)' .
	^ [(MorphicUIManager new confirm: text)
		ifTrue: [ cache logInManifest] ]