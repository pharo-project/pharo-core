customProjectAttributes
	(SystemVersion current version beginsWith: 'Pharo6') ifTrue: [ ^ #('pharo6.x') ].
	(SystemVersion current version beginsWith: 'Pharo5') ifTrue: [ ^ #('pharo5.x') ].
	(SystemVersion current version beginsWith: 'Pharo4') ifTrue: [ ^ #('pharo4.x') ].
	(SystemVersion current version beginsWith: 'Pharo3') ifTrue: [ ^ #('pharo3.x') ].
	(SystemVersion current version beginsWith: 'Pharo2') ifTrue: [ ^ #('pharo2.x') ].
	(SystemVersion current version beginsWith: 'Pharo6') ifTrue: [ ^ #('pharo6.x') ].
	(SystemVersion current version beginsWith: 'Pharo1.') ifTrue: [ ^ #('pharo1.x') ].
	(#('Pharo1.1' 'Pharo-1.1') anySatisfy: [ :version |
			SystemVersion current version beginsWith: version ]) ifTrue: [ ^ #('pharo1.x') ].
	
	(SystemVersion current version beginsWith: 'Squeak5') ifTrue: [ ^ #('squeak5.x') ].
	((SystemVersion current version beginsWith: 'Squeak4.6') or: [
			"See #fixSystemVersion"
			[ (Smalltalk imageName includesSubString: '4.6') ]
				on: MessageNotUnderstood
				do: [ false ] ]) ifTrue: [ ^ #('squeak4.x') ].
	(SystemVersion current version beginsWith: 'Squeak4.') ifTrue: [ ^ #('squeak4.x') ]