findAllMethod
	"Search for a method in the lookup of the selected class"

	| foundMethod class |
	self okToChange ifFalse: [^ self flashPackage ].
	
	class := self selectedClass.
	class ifNil: [ ^ self ].
	
	foundMethod := (SearchFacade allMessageSearchFor: class) chooseFromOwner: self window.
	foundMethod ifNil: [^ self ].
	
	self showGroupsSilently: false.
	self categoryWidget resetSelection.
	self methodWidget resetSelection.
	self categoryWidget selectProtocol: foundMethod category.
 	self model package: class package class: class category: foundMethod protocol method: foundMethod.
	
	self updateBothView.
	self update.
	self changed: #sourceCodeFrom: