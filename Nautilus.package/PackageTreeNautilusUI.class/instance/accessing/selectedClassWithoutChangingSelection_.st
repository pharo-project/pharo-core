selectedClassWithoutChangingSelection: aClass 
	| package  |
	
	categoryWidget resetCategoryCache.
	commentTextArea ifNotNil: [
		aClass 
			ifNil: [ commentTextArea disable ]
			ifNotNil: [ commentTextArea enable ] ].
	
	self okToChangeBoth ifFalse: [ ^ self ].
	
	package := self selectedPackage.
		
	aClass 
		ifNotNil: [ 
			acceptor := ClassOrMethodDefinitionAcceptor model: self.
			classesSelection at: aClass theNonMetaClass put: true ]
		ifNil: [ 
			acceptor := ClassDefinitionAcceptor model: self.
			classesSelection removeAll ].
		
	self model 
		package: package 
		class: aClass 
		category: nil 
		method: nil.
		
	self changed: #toggleButtonEnabled.
	self setWindowTitle.
	
	(self isSelectedPackage: package) ifFalse: [
		packagesSelection removeAll.
		packagesSelection at: package put: true.
		self updateBothView ].

	self resetCategoriesListSelection.
	self resetMethodsListSelection.
	self update.
	self changed: #isAClassSelected.
	self changed: #getComments.
	self changed: #instanceButtonLabel.
	self changed: #sourceCodeFrom: