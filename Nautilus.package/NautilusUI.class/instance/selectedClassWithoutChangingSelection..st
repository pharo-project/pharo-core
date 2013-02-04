accessing
selectedClassWithoutChangingSelection: aClass 
	categoryWidget resetCategoryCache.
	commentTextArea ifNotNil: [
				aClass 
					ifNil: [ commentTextArea disable ]
					ifNotNil: [ commentTextArea enable ]].
	self okToChangeBoth
		ifTrue: [| package packageChanged cl |
			package := self selectedPackage.
			(self showPackages not or: [self showGroups ])
				ifTrue: [ aClass ifNotNil: [ package := aClass package ]].
			aClass 
				ifNil: [ classesSelection removeAll ].
			packageChanged := (package ~= self selectedPackage).
			self model package: package class: aClass category: nil method: nil.
			cl := aClass.
			cl ifNotNil: [ cl := cl theNonMetaClass ].
			classesSelection at: cl put: true.
			self changed: #toggleButtonEnabled.
			self setWindowTitle.
			
			packageChanged ifTrue: [
				packagesSelection removeAll.
				packagesSelection at: package put: true.
				self showGroups
					ifTrue: [ self updateClassView ]
					ifFalse: [ self updateBothView ]].

			self resetCategoriesListSelection.
			self resetMethodsListSelection.
			self update.
			self changed: #isAClassSelected.
			self changed: #getComments.
			self changed: #instanceButtonLabel.
			self changed: #sourceCodeFrom:]