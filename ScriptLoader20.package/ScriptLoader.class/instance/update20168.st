pharo - updates
update20168
	"self new update20168"
	self withUpdateLog: 'Issue 6193:	Nautilus fix according to ClassSearch
	http://code.google.com/p/pharo/issues/detail?id=6193
	
Issue 6082:	Missed translated selector for the dialog title in the ColorChooserMorph
	http://code.google.com/p/pharo/issues/detail?id=6082
	
Issue 6153:	Nautilus: Can not get menu on apple trackpad
	http://code.google.com/p/pharo/issues/detail?id=6153
	
Issue 6180:	fix #skipSeparators packaging
	http://code.google.com/p/pharo/issues/detail?id=6180
	
Issue 6142:	Support pipeing in scripts to the image
	http://code.google.com/p/pharo/issues/detail?id=6142'.
	self loadTogether: self script158 merge: false.
	self flushCaches.
