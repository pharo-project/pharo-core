update60261
	"self new update60261"
	self withUpdateLog: '19210 Add styler support for period / semicolon / double colon / temp bar
	https://pharo.fogbugz.com/f/cases/19210

19206 UIManager confirm does not allow to set true/false button labels and window title at the same time
	https://pharo.fogbugz.com/f/cases/19206

18811 remove pharo 5.0 inbox and metacello platform attributes
	https://pharo.fogbugz.com/f/cases/18811'.
	self loadTogether: self script60261 merge: false.
	self flushCaches.
