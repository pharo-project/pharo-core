commands
newRow: aBlock origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint
	
	commands add: (SpecLayoutAddRow
							block: aBlock
							layoutFrame: ((originPoint corner: cornerPoint) asLayoutFrame 
										topLeftOffset: ooPoint;
										bottomRightOffset: ocPoint)).