update60095
	"self new update60095"
	self withUpdateLog: '18496 duplicate shortcut usage for window close and tab close
	https://pharo.fogbugz.com/f/cases/18496

18514 ConfigurationOfEpicea not in sync with Pharo
	https://pharo.fogbugz.com/f/cases/18514

18511 DNU MorphicDiffAdapter keyStroke:fromMorph:
	https://pharo.fogbugz.com/f/cases/18511'.
	self loadTogether: self script60095 merge: false.
	self loadConfiguration: 'Epicea' version: '7.92.p6'.self flushCaches.
