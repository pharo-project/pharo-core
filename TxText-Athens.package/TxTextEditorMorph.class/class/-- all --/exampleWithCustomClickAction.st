exampleWithCustomClickAction
| text |
text := 'abciuwhfi whifu wehifuhweifu wi ' asTxModel.

10 timesRepeat:[  
	
text endPosition insert: 'wioeuhfiw eufi'.

text endPosition insert: 'uwe hfiuweh fiue', String cr.
].


(text startPosition selectTo: (text startPosition + 10))
	applyAttribute: (TxActionAttribute new 
		filter: [ :evt | evt commandKeyPressed and: [ evt  isMouseDown] ];
		value: [ self inform: 'action' ]
	);
	applyAttribute: (TxForeColorAttribute with: Color red).

TxTextEditorMorph openInWindowWithText: text
