editorDo: aBlock 
	editor ifNil: [ ^self ].
	aBlock value: editor