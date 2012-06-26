unicode data
unicodeData
	"Returns the complete case folding data.  The data chunks were generated via the following script:
	
	|fs lines idx compile rest |
	fs := FileStream fileNamed: 'UnicodeData.txt'.
	fs converter:Latin1TextConverter new.
	lines := fs contents lines.
	idx := 1.

	compile := [ :ls | | method |
		method := WriteStream on: String new.
		method nextPutAll: 'unicodeDataChunk'.
		method nextPutAll: (idx printStringLength: 2 padded: true).
		method cr.
		method nextPutAll: '	^'.
		('
' join: ls) printOn: method.
		method nextPutAll: ''.
		UnicodeSpec class compile: method contents classified: 'unicode data'.
		idx := idx +1.
	].
	lines groupsOf: 1000 atATimeDo: compile.
	
	rest := lines size \\ 1000.
	compile value: (lines last: rest).
	"
	^((self class selectors
				select: [ :s | s beginsWith: 'unicodeDataChunk' ])
				sort
				collect: [ :s | self perform: s ])
				reduce: [ :a :b | a , '
', b ]