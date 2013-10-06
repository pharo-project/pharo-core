container
	^ container ifNil: [ 
		container := Morph new.
		container 
			color: Color white;
			hResizing: #spaceFill;
			vResizing: #spaceFill ]