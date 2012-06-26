commands
newRow: aBlock origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint
	
	commands add: (SpecLayoutAddRow
							block: aBlock
							fractions: (originPoint corner: cornerPoint)
							offsets: (ooPoint corner: ocPoint)).