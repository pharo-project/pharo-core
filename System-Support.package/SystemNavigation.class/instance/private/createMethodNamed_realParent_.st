createMethodNamed: aSelector realParent: class

	^ (RGMethodDefinition realClass: class selector: aSelector) package:  (RGPackage named: (class>>aSelector) package name asSymbol); yourself .