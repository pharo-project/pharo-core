previewText
	"Answer the preview text based on current font."
	
	| sample i c f |
	f := model selectedFont.
	f isNil ifTrue: [ ^'' ].
	sample := String new writeStream.
	f isSymbolFont ifFalse: [
		sample 
			nextPutAll: 'the quick brown fox jumps over the lazy dog' ;cr;
			nextPutAll:  'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.';
			cr ].
	i := 0.
	33 to: 255 do: [:ci |
		sample nextPut: (c:=Character value: ci).
		i := i + 1.
		(('@Z`z' includes:c) or: [ i = 30 ]) 
			ifTrue: [ i :=0. sample cr ] ].
	^sample contents