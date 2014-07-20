acceptDroppingMorph: transferMorph event: evt inMorph: dstListMorph 
	"Here we are fetching informations from the dropped transferMorph 
	and  
	performing the correct action for this drop."
	| srcType success srcBrowser |
	success := false.
	srcType := transferMorph dragTransferType.
	srcBrowser := transferMorph source model.
	srcType == #messageList
		ifTrue: [ | srcClass srcSelector srcCategory |
			srcClass := transferMorph passenger key.
			srcSelector := transferMorph passenger value.
			srcCategory := srcBrowser selectedMessageCategoryName.
			srcCategory
				ifNil: [srcCategory := srcClass organization categoryOfElement: srcSelector].
			success := self
						acceptMethod: srcSelector
						messageCategory: srcCategory
						class: srcClass
						atListMorph: dstListMorph
						internal: self == srcBrowser
						copy: transferMorph shouldCopy].
	srcType == #classList
		ifTrue: [success := self
						changeCategoryForClass: transferMorph passenger
						srcSystemCategory: srcBrowser selectedSystemCategoryName
						atListMorph: dstListMorph
						internal: self == srcBrowser
						copy: transferMorph shouldCopy].
	^ success