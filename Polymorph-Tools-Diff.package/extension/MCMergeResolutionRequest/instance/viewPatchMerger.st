viewPatchMerger
	"Open a modal diff tools browser to perform the merge."

	|m modalMorph|
	m := (PSMCMergeMorph forMerger: self merger)
		fromDescription: 'Working copy' translated;
		toDescription: messageText.
	modalMorph := (UIManager default respondsTo: #modalMorph)
		ifTrue: [UIManager default modalMorph]
		ifFalse: [World].
	modalMorph openModal: (
		m newWindow
			title: messageText).
	^m merged