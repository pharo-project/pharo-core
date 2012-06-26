accessing
rationale
	^ 'Checks that all classes that define = also define hash. If hash is not defined then the instances of the class might not be able to be used in sets since equal element must have the same hash.'