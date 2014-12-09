setContainer: anObject

	viewContainer := anObject.
	
	viewContainer layoutView announcer weak on: TxLayoutViewChanged send: #viewChanged: to: self