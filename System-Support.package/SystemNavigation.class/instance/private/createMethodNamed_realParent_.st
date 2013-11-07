createMethodNamed: aSelector realParent: class

	^ (RGMethodDefinition realClass: class selector: aSelector) package:  (class>>aSelector) package asRingDefinition; yourself .