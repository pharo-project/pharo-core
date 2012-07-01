initialization
initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'FillInTheBlank multiLineRequest: `@object1 centerAt: `@object2 initialAnswer: `@object3 answerHeight: `@object4'
			'FillInTheBlank request: `@object1 initialAnswer: `@object2 centerAt: `@object3'
			'FillInTheBlank request: `@object1 initialAnswer: `@object2'
			'FillInTheBlank request: `@object1'
			'FillInTheBlank requestPassword: `@object1'
			'PopUpMenu confirm: `@object1 orCancel: `@object2'
			'PopUpMenu confirm: `@object1 trueChoice: `@object2 falseChoice: `@object3'
			'PopUpMenu confirm: `@object1'
			'PopUpMenu inform: `@object1'
			'PopUpMenu initialize'
			'PopUpMenu labelArray: `@object1 lines: `@object2'
			'PopUpMenu labelArray: `@object1'
			'PopUpMenu labels: `@object1 lines: `@object2'
			'PopUpMenu labels: `@object1'
			'PopUpMenu withCaption: `@object1 chooseFrom: `@object2'
			'SelectionMenu fromArray: `@object1'
			'SelectionMenu labelList: `@object1 lines: `@object2 selections: `@object3'
			'SelectionMenu labelList: `@object1 lines: `@object2'
			'SelectionMenu labelList: `@object1 selections: `@object2'
			'SelectionMenu labelList: `@object1'
			'SelectionMenu labels: `@object1 lines: `@object2 selections: `@object3'
			'SelectionMenu labels: `@object1 lines: `@object2'
			'SelectionMenu labels: `@object1 selections: `@object2'
			'SelectionMenu selections: `@object1 lines: `@object2'
			'SelectionMenu selections: `@object1' )
		do: [ :node :answer | node ]