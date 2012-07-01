as yet unclassified
addHighlightsFrom: srcBlock to: dstBlock to: aCollection color: aColor
	"Add the highlights required for the given character blocks
	of a paragraph. May be up to three highlights depending
	on the line spans."
	
	srcBlock textLine = dstBlock textLine
		ifTrue: [aCollection add: (TextHighlight new
				color: aColor;
				bounds: (srcBlock topLeft corner: dstBlock bottomRight))]
		ifFalse: [aCollection
					add: (TextHighlight new
							color: aColor;
							bounds: (srcBlock topLeft corner: srcBlock textLine bottomRight));
					add: (TextHighlight new
							fillWidth: true;
							color: aColor;
							bounds: (srcBlock bottomLeft corner: dstBlock topRight));
					add: (TextHighlight new
							color: aColor;
							bounds: (dstBlock textLine topLeft corner: dstBlock bottomRight))]