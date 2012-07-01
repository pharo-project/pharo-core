private
add: aCollection into: aGroup

	(elementsToAdd allSatisfy: [:e | e isBehavior ])
		ifTrue: [ self groups addClasses: aCollection into: aGroup ]
		ifFalse: [ self groups add: aCollection into: aGroup ]