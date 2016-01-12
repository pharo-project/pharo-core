inspectorDiffIn: aComposite

	^ aComposite tabulator 
		with: [ :aTabulator |
			aTabulator 
				column: #actual;
				column: #expected.
			"aTabulator when: [ self session isActive ]."
			aTabulator transmit to: #actual; andShow: [ :anotherComposite |
				anotherComposite  dynamic 
					display: [:anObject |
				 		(GTDebuggerInspector new 
							startOn: self session actualResult) ] ].
			aTabulator transmit to: #expected; andShow: [ :anotherComposite |
				anotherComposite  dynamic 
					display: [:anObject |
				 		(GTDebuggerInspector new 
							startOn: self session expectedResult) ] ] ]