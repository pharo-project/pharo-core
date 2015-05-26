pharoPlaygroundPresentationExample
	"
	self pharoPlaygroundPresentationExample
	"
	| browser |
	browser := GLMTabulator new.
	browser
		row: #r1;
		row: #r2.
	browser transmit
		to: #r1;
		andShow: [ :aComposite | 
					aComposite pharoPlayground
						selectionAct: [ :workspace :page | workspace evaluateSelection ] on: $d entitled: 'Do it';
						selectionAct: [ :workspace :page | workspace evaluateSelectionAndDo: [ :result | result inspect ] ]
							on: $i
							entitled: 'Inspect it';
						selectionAct: [ :workspace :page | workspace evaluateSelectionAndDo: [ :result | result explore ] ]
							on: $e
							entitled: 'Explore it' ].
	browser transmit
		to: #r2;
		andShow: [ :aComposite | 
					aComposite pharoPlayground
						variableBindings: [ 
							{(#browser -> browser).
							(#a -> 1)} ] ].
	browser
		openOn:
			'browser := GLMTabulator new.
browser row: #r1; row: #r2.

browser transmit to: #r1; andShow: [ :aComposite |
	aComposite pharoPlayground].
browser openOn:''self halt'' '