labelBrick: anObject
	labelBrick := anObject.
	
	self labelBrick
		textPosition: #center;
		with: [ :b | b layout vAlign: #center ];
		fontSize: 11;
		with: [ :b | b label familyName: 'Bitmap DejaVu Sans' ];
		vSpaceFill;
		hSpaceFill.
		
	self addBrickBack: self labelBrick