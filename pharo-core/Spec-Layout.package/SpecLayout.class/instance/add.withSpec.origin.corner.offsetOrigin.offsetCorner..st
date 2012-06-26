commands
add: modelGetter withSpec: aSymbol origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint

	commands add: (SpecLayoutAddWithSpec 
						subwidget: modelGetter 
						spec: aSymbol 
						fractions: (originPoint corner: cornerPoint)
						offsets: (ooPoint corner: ocPoint)).