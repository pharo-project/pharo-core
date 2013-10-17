previewText
	"Answer the preview text based on current font."
	
	| sample i c f |
	f := model selectedFont.
	f isNil ifTrue: [ ^'' ].
	sample := String new writeStream.
f isSymbolFont ifFalse: [|pangram| pangram := self selectedPangram.
		sample 
			nextPutAll: pangram ;cr;
			nextPutAll:  pangram asUppercase ;
			cr ].
	i := 0.
	33 to: 255 do: [:ci |
		sample nextPut: (c:=Character value: ci).
		i := i + 1.
		(('@Z`z' includes:c) or: [ i = 30 ]) 
			ifTrue: [ i :=0. sample cr ] ].
	^sample contents