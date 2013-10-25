createMethodNamed: aSelector realParent: class

	^ (RGMethodDefinition realClass: class selector: aSelector) package:  (RGPackage named: class package name asSymbol); yourself .