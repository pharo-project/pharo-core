commands
newColumn: aBlock origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint
	
	commands add: (SpecLayoutAddColumn
							block: aBlock
							fractions: (originPoint corner: cornerPoint)
							offsets: (ooPoint corner: ocPoint)).