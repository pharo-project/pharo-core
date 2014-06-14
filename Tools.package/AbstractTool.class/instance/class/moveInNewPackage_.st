moveInNewPackage: aCollection

	| labels lines oldIndex newName item aPackage |
	aCollection ifEmpty: [^ nil ].
	aPackage := aCollection first package.	
	labels := self model packages collect: [:each | each name].
	lines := {0}.
		
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: ('Change Package (current: ', aPackage name,')').
	newName ifNil: [ ^ nil ].
	newName := newName asSymbol.

	item := self browsedEnvironment packageOrganizer packageNamed: newName.
	aCollection do: [:aClass |
		aPackage removeClass: aClass.
		item addClassDefinition: aClass.
		aClass category: item name ].
	^ item