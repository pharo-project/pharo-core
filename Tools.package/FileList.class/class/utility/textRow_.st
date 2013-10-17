textRow: aString 

	^AlignmentMorph newRow 
		wrapCentering: #center; cellPositioning: #leftCenter;
		color: Color transparent;
		layoutInset: 0;
		addMorph: (
			AlignmentMorph newColumn
			wrapCentering: #center; cellPositioning: #topCenter;
			color: Color transparent;
			vResizing: #shrinkWrap;
			layoutInset: 0;
			addMorph: (
				AlignmentMorph newRow
				wrapCentering: #center; cellPositioning: #leftCenter;
				color: Color transparent;
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				layoutInset: 0;
				addMorph: ((StringMorph contents: aString) color: Color blue; lock)
			)
		)