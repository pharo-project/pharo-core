accept: source notifying: aController
	| p result |
	p := self selectedClass organization protocolOrganizer protocolsOfSelector: self selector.
	p := p ifEmpty: [ Protocol unclassified ] ifNotEmpty: [p anyOne name].
	result := self selectedClass compile: source classified: p notifying: aController.
	result ifNotNil: [self changed: #clearUserEdits ].
	^ result