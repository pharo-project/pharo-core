code pane
compileMessage: aText notifying: aController
	"Compile the code that was accepted by the user, placing the compiled method into an appropriate message category.  Return true if the compilation succeeded, else false."

	| fallBackCategoryIndex fallBackMethodIndex originalSelectorName result |

	self selectedMessageCategoryName ifNil:
			[ self selectOriginalCategoryForCurrentMethod 	
										ifFalse:["Select the '--all--' category"
											self messageCategoryListIndex: 1]]. 


	self selectedMessageCategoryName asSymbol = ClassOrganizer allCategory
		ifTrue:
			[ "User tried to save a method while the ALL category was selected"
			fallBackCategoryIndex := messageCategoryListIndex.
			fallBackMethodIndex := messageListIndex.
			editSelection == #newMessage
				ifTrue:
					[ "Select the 'as yet unclassified' category"
					messageCategoryListIndex := 0.
					(result := self defineMessageFrom: aText notifying: aController)
						ifNil:
							["Compilation failure:  reselect the original category & method"
							messageCategoryListIndex := fallBackCategoryIndex.
							messageListIndex := fallBackMethodIndex]
						ifNotNil:
							[self setSelector: result]]
				ifFalse:
					[originalSelectorName := self selectedMessageName.
					self setOriginalCategoryIndexForCurrentMethod.
					messageListIndex := fallBackMethodIndex := self messageList indexOf: originalSelectorName.			
					(result := self defineMessageFrom: aText notifying: aController)
						ifNotNil:
							[self setSelector: result]
						ifNil:
							[ "Compilation failure:  reselect the original category & method"
							messageCategoryListIndex := fallBackCategoryIndex.
							messageListIndex := fallBackMethodIndex.
							^ result notNil]].
			self changed: #messageCategoryList.
			^ result notNil]
		ifFalse:
			[ "User tried to save a method while the ALL category was NOT selected"
			^ (self defineMessageFrom: aText notifying: aController) notNil]