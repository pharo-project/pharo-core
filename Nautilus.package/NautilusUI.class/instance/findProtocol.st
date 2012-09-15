menus behavior
findProtocol
	"Search for a method in the lookup of the selected class"

	| foundProtocol class |
	
	class := self selectedClass.
	self okToChange ifFalse: [^ self flashPackage ].

	foundProtocol := (SearchFacade protocolSearchFor: class) chooseFromOwner: self window.
	foundProtocol ifNil: [^ self ].
		
	self showGroupsSilently: false.
	self categoryWidget resetSelection.
	self categoryWidget selectProtocol: foundProtocol.
 	self model package: class package class: class category: foundProtocol method: nil.
	
	self updateBothView.
	self update.
	self changed: #sourceCodeFrom: