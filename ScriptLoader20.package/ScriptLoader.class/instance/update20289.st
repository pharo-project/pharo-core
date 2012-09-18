pharo - updates
update20289
	"self new update20289"
	self withUpdateLog: '-  Issue 6626:	[Nautilus] removing groups is not working properly. Thanks Benjamin Van Ryseghem. 
	http://code.google.com/p/pharo/issues/detail?id=6626
	
- Issue 5103:	Better Gofer error messages. Thanks Sean De Nigris and Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5103

- Issue 6673:	Remove squeakmap from MC repositories.
	http://code.google.com/p/pharo/issues/detail?id=6673
	'.
	self loadTogether: self script276 merge: false.
	self flushCaches.
