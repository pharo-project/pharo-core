newTextPreviewMorph
	"Answer a new text preview morph."

	^(self newTextEditorFor: self getText: nil setText: nil getEnabled: nil)
		hResizing: #rigid;
		vResizing: #spaceFill;
		extent: self previewSize;
		minWidth: self previewSize x;
		minHeight: self previewSize y;
		enabled: false