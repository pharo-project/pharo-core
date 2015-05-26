initializePresenter

	listModel whenSelectedItemChanged: [:item |
			toolbarModel method: item.
			textModel behavior: (item ifNil: [ nil ] ifNotNil: [ item methodClass ]).
			textModel doItReceiver: textModel behavior.
			textModel text: (self textConverter method: item; getText)].
		
	listModel whenListChanged: [ self updateTitle ].
		
	titleHolder whenChangedDo: [ self updateTitle ].
	textModel acceptBlock: [ :text :notifyer | (self accept: text notifying: notifyer)  notNil].