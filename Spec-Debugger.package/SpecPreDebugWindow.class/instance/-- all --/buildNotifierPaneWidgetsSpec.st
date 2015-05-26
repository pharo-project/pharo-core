buildNotifierPaneWidgetsSpec
	
	^ self message 
		ifNil: [ {#stackPane. #MultiColumnListModel} ] 
		ifNotNil: [ {#codePane. #TextModel} ]