sourceCodeMenuExtra: aBuilder
	<contextMenu>
	<nautilusGlobalSourceCodeMenu>
	| target method |
	target := aBuilder model.
	target selectedClass ifNil: [ ^ self ].
	method := target selectedMethod.
	(target selectedClass isTestCase and: [ method notNil and: [ method selector beginsWith: 'test' ]])
		ifTrue: [
			(aBuilder item: #'Run Test')
					order: 1;
					keyText: 'j, m' if: Nautilus useOldStyleKeys not;
					selector: #runTestForAMethod:notifying:;
					arguments: { target selectedMethod. true };
					enabledBlock: [ target sourceTextModel hasUnacceptedEdits not ];
					withSeparatorAfter ].