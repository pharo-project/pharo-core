browseCurrentVersionsOfSelections
	"Opens a message-list browser on the current in-memory versions of all methods that are currently seleted"
	
	| aList  |
	aList := MessageList new.
	Cursor read showWhile: [
		1 to: changeList size do: [:i |
			(listSelections at: i) ifTrue: [
				| aClass aChange |
				aChange := changeList at: i.
				(aClass := aChange methodClass) notNil
					and: [aChange isMethodDefinedInImage
								ifTrue: [
									aList addMethodReference: ( RGMethodDefinition 
													realClass: aClass  
													selector: aChange methodSelector)]
						]]]].

	aList size = 0 ifTrue: [^ self inform: 'no selected methods have in-memory counterparts'].
	(Smalltalk tools messageList
		on: aList methodReferenceList
		named: 'Current versions of selected methods in ', file localName) open
