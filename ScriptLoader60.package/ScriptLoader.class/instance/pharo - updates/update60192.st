update60192
	"self new update60192"
	self withUpdateLog: '18936 RBParser allows pragmas after method code
	https://pharo.fogbugz.com/f/cases/18936

18829 Add a RefactoringFramework System HelpTopic
	https://pharo.fogbugz.com/f/cases/18829

18955 DoubleLinkedList and its test should be in its own package
	https://pharo.fogbugz.com/f/cases/18955'.
	self loadTogether: self script60192 merge: false.
	self flushCaches.
