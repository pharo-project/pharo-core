pharo - updates
update20011
	"self new update20011"
	self withUpdateLog: 'introducing: 

-RPackage
-Spec
-Keymapping
-Refactoring Engine
-AST
-Nautilus

- Issue 5665:	bug on new ecompletion/ocompletion
	http://code.google.com/p/pharo/issues/detail?id=5665
	
- Issue 5671:	Polymorph fixes
	http://code.google.com/p/pharo/issues/detail?id=5671'.
	self loadTogether: self script5 merge: false.
	World resetWorldMenu.
	self flushCaches.
