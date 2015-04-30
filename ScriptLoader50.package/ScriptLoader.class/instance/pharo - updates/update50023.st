update50023
	"self new update50023"
	
{ SlotExampleMovie . SlotExamplePerson } do: #recompile.
	self withUpdateLog: '15422 SHTextStyler>>#styleInBackgroundProcess:  should not set the text if styling process was terminated 
	https://pharo.fogbugz.com/f/cases/15422

15443 AST based highlighter: DNU sometimes
	https://pharo.fogbugz.com/f/cases/15443

15437 remove writeToSlot:of: 
	https://pharo.fogbugz.com/f/cases/15437'.
	self loadTogether: self script632 merge: false.
	self flushCaches.
