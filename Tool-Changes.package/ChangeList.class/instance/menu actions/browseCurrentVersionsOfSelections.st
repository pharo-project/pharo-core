browseCurrentVersionsOfSelections
	"Opens a message-list browser on the current in-memory versions of all methods that are currently seleted"
	
	| aList  |
	aList := OrderedCollection new.
		1 to: changeList size do: [:i |
			(listSelections at: i) ifTrue: [ | aChange |
				aChange := changeList at: i.
			 	aChange methodClass notNil
					and: [aChange isMethodDefinedInImage
								ifTrue: [ aList add: aChange asRingDefinition]]]].
	aList isEmpty ifTrue: [^ self inform: 'no selected methods have in-memory counterparts'].
	(Smalltalk tools messageList
		on: aList 
		named: 'Current versions of selected methods in ', file localName) open
