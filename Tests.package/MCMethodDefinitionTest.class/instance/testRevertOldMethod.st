testing
testRevertOldMethod
	| definition changeRecord |
	Object compile: 'yourself ^ self' classified: MCMockPackageInfo new methodCategoryPrefix.
	definition := (RGMethodDefinition realClass: Object selector: #yourself) asMCMethodDefinition.
	changeRecord := definition scanForPreviousVersion.
	self assert: changeRecord notNil.
	self assert: changeRecord category = 'accessing'.
	changeRecord fileIn.