update50192
	"self new update50192"
	self withUpdateLog: '16036 Method list gives an error after removing an overriding method
	https://pharo.fogbugz.com/f/cases/16036

16040 CodeSearchingRule should not be visible in CriticsBrowser
	https://pharo.fogbugz.com/f/cases/16040

16027 add special RB nodes for Globals and Ivars
	https://pharo.fogbugz.com/f/cases/16027

16029 Changing the font globally (Force all) does not affect the font in the right side of the Help window
	https://pharo.fogbugz.com/f/cases/16029'.
	self loadTogether: self script50192 merge: false.
	self loadConfiguration: 'Rubric' version: '1.16'.self flushCaches.
