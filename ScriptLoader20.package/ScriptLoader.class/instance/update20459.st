pharo - updates
update20459
	"self new update20459"
	self withUpdateLog: '-  Issue 7170:	Open up the API for secondarySelection in editor/TextMorphForEditView. Thanks Thierry Goubier
	http://code.google.com/p/pharo/issues/detail?id=7170
	
		
- Issue 7182:	Extensions shown only when there are extensions
	http://code.google.com/p/pharo/issues/detail?id=7182
	
- improve the MCClassDefinition cache reseting protocol'.
	self loadTogether: self script437 merge: false.
	self flushCaches.
