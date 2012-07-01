expectedfailures
testAddMethodInExtensionCategoryNotExistingCreateANewPackage
	"test that when we add a method  in an extension category ( beginning with *)that does not refer to an existing categorya new package with the name of this category is added, and that the method is added to this new package"
	| class firstPackage secondPackage|
	self flag: #stef. "this is strange since the setup does not use withOrganizer:do: and now we use it. There are some inconsistencies"
	"not sure this is the behavior expected. Maybe a new package should be created and should contain the method. Actually, this is the reason the test fail :)."
	
	Smalltalk globals organization addCategory: 'XXXXX'.
	Smalltalk globals organization addCategory: 'YYYYY'.
	firstPackage := self organizer packageNamed: #XXXXX.
	secondPackage := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: #newMethod inClass:  class inCategory: '*YYYY'.
	self deny: (secondPackage includesExtensionSelector: #newMethod ofClass: class).
	self deny: (class package includesDefinedSelector: #newMethod ofClass: class).
	self assert: ((self organizer packageNamed: #YYYY) = nil) not.
	self assert: ((class >> #newMethod) packageFromOrganizer: self organizer ) = (self organizer packageNamed: #YYYY).