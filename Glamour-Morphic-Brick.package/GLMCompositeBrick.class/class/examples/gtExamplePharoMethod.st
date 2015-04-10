gtExamplePharoMethod
	<gtExample: 'Phlow Pharo method'>

	^ self new
		hSpaceFill;
		vSpaceFill;
		with: [ :b |
			b pharoMethod
				title: #printString;
				display: #getSource;
				smalltalkClass: #methodClass;
				entity: Morph>>#bounds ]