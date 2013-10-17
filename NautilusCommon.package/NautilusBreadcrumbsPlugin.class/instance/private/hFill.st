hFill

	^ hFill ifNil: [ hFill := Morph new
								height: 0;
								width: 2;
								hResizing: #spaceFill;
								vResizing: #rigid;
								yourself ].