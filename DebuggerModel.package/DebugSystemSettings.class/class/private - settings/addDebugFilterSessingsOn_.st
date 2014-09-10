addDebugFilterSessingsOn: aBuilder
	| stackWidgetClass |
	
	stackWidgetClass := Smalltalk tools debugger stackWidgetClass.
	(aBuilder group: #BasicFilters)
				label: 'Basic Filters' translated;
				description: 'default filtering configurations' translated;
				target: Smalltalk tools debugger;
				with: [
					(aBuilder setting: #filterCommonMessageSends)
				label: 'Filter out common message sends' translated;
				target: Smalltalk tools debugger;
				description: 'When true, filter out uninteresting message sends in the Debugger view while debugging' translated;
				with: [ 
					(aBuilder setting: #filterDoItSelectors)
					label: 'Filter out doIt sends' translated;
					target: stackWidgetClass.
					
					(aBuilder setting: #filterNilSelectors)
					label: 'Filter out nil message sends' translated;
					target: stackWidgetClass.
					
					(aBuilder setting: #filterKernelClasses)
					label: 'Filter out kernel classes message sends' translated;
					target: stackWidgetClass.
					 ]
				].