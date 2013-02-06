menu
sourceCodeMenuExtra: aBuilder
	<contextMenu>
	<nautilusGlobalSourceCodeMenu>
	| target method |
	target := aBuilder model.
	target selectedClass ifNil: [ ^ self ].
	method := target selectedMethod.
	((target selectedClass inheritsFrom: TestCase) and: [ method notNil and: [ method selector beginsWith: 'test' ]])
		ifTrue: [
			(aBuilder item: #'Run Test')
					order: 1;
					keyText: 'j, m';
					action: #runTestForAMethod:notifying:;
					arguments: { target selectedMethod. true };
					enabledBlock: [ target sourceTextArea hasUnacceptedEdits not ];
					withSeparatorAfter ].