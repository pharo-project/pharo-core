update50576
	"self new update50576"
	
Author  
	useAuthor: 'Anon' 
	during: [  
OSEnvironment compileSilently: (OSEnvironment>>#getEnv:) sourceCode classified:
 (OSEnvironment>>#getEnv:) category.
].
	self withUpdateLog: '17571 Nautilus Rename method shortcut throws an exception if no method is selected
	https://pharo.fogbugz.com/f/cases/17571

17522 Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	https://pharo.fogbugz.com/f/cases/17522

17554 Context class class definition is not a valid message
	https://pharo.fogbugz.com/f/cases/17554'.
	self loadTogether: self script50576 merge: false.
	self flushCaches.
