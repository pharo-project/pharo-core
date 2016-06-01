update60054
	"self new update60054"
	self withUpdateLog: '18343 Radiobuttons sometimes appear like Checkbox
	https://pharo.fogbugz.com/f/cases/18343

18342 SliderModel label isnt display correctly
	https://pharo.fogbugz.com/f/cases/18342

18372 Inheritable PS variables registration logic is broken by stupid bug
	https://pharo.fogbugz.com/f/cases/18372

18371 Remove menu entry for RecentMessageList (replaced by Epicea)
	https://pharo.fogbugz.com/f/cases/18371'.
	self loadTogether: self script60054 merge: false.
	
Smalltalk tools remove: #recentMessageList.
	self flushCaches.
