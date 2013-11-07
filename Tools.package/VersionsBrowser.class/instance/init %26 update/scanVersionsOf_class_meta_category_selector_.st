scanVersionsOf: aMethod class: aClass meta: isMeta category: aCategoryOrNil selector: aSelector

	selectorOfMethod := aSelector.
	currentCompiledMethod := aMethod.
	classOfMethod := isMeta ifTrue: [ aClass class ] ifFalse: [ aClass ].

	changeList := OrderedCollection new.
	list := OrderedCollection new.

	self addedChangeRecord ifNotNil: [ :change |
		self addItem: change 
		text: ('{1} (in {2})' translated format: { change stamp. change fileName }) ].

	listIndex := 0.

	SourceFiles 
		changeRecordsFrom: aMethod sourcePointer
		className: aClass name
		isMeta: isMeta
		do: [ :changeRecord |
			self 
				addItem: changeRecord
				text: changeRecord stamp, ' ', aClass name, (isMeta ifTrue: [' class '] ifFalse: [' ']) , aSelector, ' {', changeRecord category, '}' ].
	
	listSelections := Array new: list size withAll: false