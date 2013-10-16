container
	^ container ifNil: [ 
		container := Morph new asSpecAdapter.
		container 
			color: Color white;
			hSpaceFill;
			vSpaceFill ]