defineMessageFrom: aString notifying: aController
	"Compile the expressions in aString. Notify aController if a syntax error occurs. Install the compiled method in the selected class classified under  the currently selected message category name. Answer the selector obtained if compilation succeeds, nil otherwise."
	| selectedMessageName selector category oldMessageList |
	selectedMessageName := self selectedMessageName.
	oldMessageList := self messageList.
	contents := nil.
	selector := self selectedClassOrMetaClass
				compile: aString
				classified: ((category := self selectedMessageCategoryName) ifNil: [ Protocol unclassified ])
				notifying: aController.
	selector == nil ifTrue: [^ nil].
	contents := aString copy.
	selector ~~ selectedMessageName
		ifTrue: 
			[category = Protocol nullCategory
				ifTrue: [self changed: #classSelectionChanged.
						self changed: #classList.
						self messageCategoryListIndex: 1].
			self setClassOrganizer.  "In case organization not cached"
			(oldMessageList includes: selector)
				ifFalse: [self changed: #messageList].
			self messageListIndex: (self messageList indexOf: selector)].
	^ selector