customButtonSpecs
	"Answer an array of elements of the form wording, selector, help-message, that characterize the custom button row of a debugger."

	| list |
	self isPostMortem ifTrue: [ ^ self postMortemCustomeButtonSpecs ].
	
	list := #(('Proceed'	proceed				'Close the debugger and proceed.')
		('Restart'		restart				'Reset this context to its start.')
		('Into'			send				'Step Into message sends')
		('Over'			doStep				'Step Over message sends')
		('Through'		stepIntoBlock		'Step into a block')
		('Full Stack'		fullStack			'Show full stack')
		('Run to Here'	runToSelection		'Run to selection')
		('Where'		where				'Select current pc range')).
								
	self class restartAlsoProceeds ifTrue:
		[list := list collect: [:each |
			each second == #restart
				ifTrue: [each copy at: 3 put: 'Proceed from the beginning of this context.'; yourself]
				ifFalse: [each]]].
	^ list