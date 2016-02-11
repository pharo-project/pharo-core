update50577
	"self new update50577"
	self withUpdateLog: '17418 new breakpoint does not work on certain conditions  
	https://pharo.fogbugz.com/f/cases/17418

15839 class rename does not show changes that will be applied
	https://pharo.fogbugz.com/f/cases/15839

17557 Update DependencyAnalyzer: In Linux some shortcuts use alt, some others ctrl
	https://pharo.fogbugz.com/f/cases/17557

17569 Context menu in method pane is broken if no method is selected
	https://pharo.fogbugz.com/f/cases/17569'.
	self loadTogether: self script50577 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.15'.self flushCaches.
