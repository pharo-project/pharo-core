update60181
	"self new update60181"
	self withUpdateLog: '16789 RBUnaryAccessingMethodWithoutReturnRule refers to #nodes instead of #statements
	https://pharo.fogbugz.com/f/cases/16789

18894 RBPatternParser should respect RBErrorNode when parsing pattern blocks II
	https://pharo.fogbugz.com/f/cases/18894

18928 ambigous isArray for RBArrayNode
	https://pharo.fogbugz.com/f/cases/18928

18914 Improve MethodClassifier classification based on selector parts
	https://pharo.fogbugz.com/f/cases/18914

18888 Move Pharo bootstrap rule to Renraku model
	https://pharo.fogbugz.com/f/cases/18888'.
	self loadTogether: self script60181 merge: false.
	self flushCaches.
