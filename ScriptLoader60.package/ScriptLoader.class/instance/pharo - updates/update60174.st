update60174
	"self new update60174"
	self withUpdateLog: '18890 Parser cant not parse faulty or unfinished blocks with return caret
	https://pharo.fogbugz.com/f/cases/18890

18893 MCStWriterTest>>#expectedClassMethodDefinition will always fail on bootstrapped image
	https://pharo.fogbugz.com/f/cases/18893

18892 simplify isBlockReturn: to use encoder
	https://pharo.fogbugz.com/f/cases/18892'.
	self loadTogether: self script60174 merge: false.
	self flushCaches.
