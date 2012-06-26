commands
add: aSpec origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint
	
	commands add: (SpecLayoutAdd 
							subwidget: aSpec
							fractions: (originPoint corner: cornerPoint)
							offsets: (ooPoint corner: ocPoint)).