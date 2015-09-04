findAllMethod
	"Search for a method in the lookup of the selected class"

	| foundMethod class |
	self okToChange
		ifFalse: [ ^ self flashPackage ].
	class := self selectedClass.
	class ifNil: [ ^ self ].
	foundMethod := (SearchFacade allMessageSearchFor: class)
		chooseFromOwner: self window.
	foundMethod ifNil: [ ^ self ].
	self resetCategoriesList.
	self resetMethodsListSelection.
	self categoryWidget selectProtocol: foundMethod category.
	self model
		package: class package
		class: class
		protocol: foundMethod protocol
		method: foundMethod.
	self updatePackageGroupAndClassList.
	self updateCategoryAndMethodList