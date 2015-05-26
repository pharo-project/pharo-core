exampleWithEmbeddedObject

| text |
text := 'abciuwhfi whifu wehifuhweifu wi ' asTxModel.

1000 timesRepeat:[ 
text endPosition insert: 'wioeuhfiw eufi'.
text endPosition insertObject:  Morph new "((SimpleButtonMorph newWithLabel: 'DEADBEEF' ) color: Color random )" .
text endPosition insert: 'uwe hfiuweh fiue', String cr.
text endPosition insert: '-------', String cr.
].

(text startPosition selectTo: (text startPosition + 10)) applyAttribute: (TxCursorAttribute with: Cursor webLink ).
TxTextEditorMorph openInWindowWithText: text
