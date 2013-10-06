testExtensionMethod
	| newMethod newClass newPackage newPackageExt |

	newMethod:= (RGFactory current createMethodNamed: #+)
					isExtension: true.
	self assert: (newMethod protocol isNil).
	self assert: (newMethod isExtension).

	newMethod:= (Collection >> #+) asRingDefinition.	
	self assert: (newMethod isMethod).  
	self assert: (newMethod protocol = '*Collections-arithmetic').
	self assert: (newMethod isExtension).
	
	newPackage := RGFactory current createPackageNamed: #Package.
	newPackageExt := RGFactory current createPackageNamed: #PackageExtensions.
	newClass := RGFactory current createClassNamed: #Class.
	newMethod := RGFactory current createMethodNamed: #foo parent: newClass.
	newPackage addClass: newClass.
	newMethod package: newPackageExt.
	self assert: (newMethod isExtension).