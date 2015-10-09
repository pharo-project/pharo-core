exampleCommandLauncher
	<example>
	| tmp2 |
	tmp2 := RubFloatingEditorBuilder new.
	tmp2
		acceptOnCR: false;
		customizeEditorWith:
				[ :arg1 | 
			| tmp4 |
			tmp4 := arg1.
			tmp4
				width: 300;
				height: 50;
				center: World center ];
		withEditedContentsDo: [ :arg2 | self inform: arg2 ];
		openEditorWithContents: 'self inspect'