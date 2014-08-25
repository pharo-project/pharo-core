update40182
	"self new update40182"
	self withUpdateLog: '13908 RBPragmaNode uses #to:do: instead of #with:do: (Coding Idiom Violation)
	https://pharo.fogbugz.com/f/cases/13908

13906 Move to class refactoring gives DNU
	https://pharo.fogbugz.com/f/cases/13906

13909 Instance variable previous in RBProgramNodeTest is not referenced
	https://pharo.fogbugz.com/f/cases/13909

13894 Class side initialize methods should be runnable in Nautilus
	https://pharo.fogbugz.com/f/cases/13894

13907 RBSequenceNode uses #to:do: instead of #with:do: (Coding Idiom Violation)
	https://pharo.fogbugz.com/f/cases/13907

'.
	self loadTogether: self script182 merge: false.
	self flushCaches.
self cleanRepositories.
