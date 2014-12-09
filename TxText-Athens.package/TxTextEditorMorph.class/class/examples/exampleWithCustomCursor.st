exampleWithCustomCursor
| text selection |
text := 'abciuwhfi whifu wehifuhweifu wi ' asTxModel.

10 timesRepeat:[ 
text endPosition insert: 'wioeuhfiw eufi'.
text endPosition insert: 'uwe hfiuweh fiue', String cr.
].

selection := (text startPosition selectTo: (text startPosition + 20)).

selection applyAttribute: (TxCursorAttribute with: Cursor webLink ).
selection applyAttribute: (TxForeColorAttribute with: Color blue ).

TxTextEditorMorph openInWindowWithText: text