pharo - updates
update20346
	"self new update20346"
	self withUpdateLog: 'Issue 6827:	add Solarized style text color scheme
	http://code.google.com/p/pharo/issues/detail?id=6827
	
Issue 6824:	Nautilus Issue Creation Improvements: accept on enter & no autocompletion
	http://code.google.com/p/pharo/issues/detail?id=6824
	
Issue 6823:	SliceMaker should trim pasted nonDigit Characters from IssueNumber
	http://code.google.com/p/pharo/issues/detail?id=6823
	
Issue 6821:	Fix Nautilus Shortcut Browse Restricted Shortcut
	http://code.google.com/p/pharo/issues/detail?id=6821'.
	self loadTogether: self script328 merge: false.
	self flushCaches.
