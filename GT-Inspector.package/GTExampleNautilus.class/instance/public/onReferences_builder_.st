onReferences: aLiteral builder: aBuilder
	(aBuilder item: #'Examples of ...')
		order: 10000;
		action: [
			(SystemNavigation default examplesReferencesTo: aLiteral) 
				ifNotEmpty: [ :examples | examples inspect ]
				ifEmpty: [ UIManager default inform: 'No examples found for #', aLiteral asString ] ].
				
