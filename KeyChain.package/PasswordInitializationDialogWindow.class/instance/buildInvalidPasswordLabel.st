creation
buildInvalidPasswordLabel

	container := PanelMorph new
					color: Color transparent;
					changeProportionalLayout;
					height: 25;
					vResizing: #rigid;
					hResizing: #spaceFill;
					yourself.
					
	^ container