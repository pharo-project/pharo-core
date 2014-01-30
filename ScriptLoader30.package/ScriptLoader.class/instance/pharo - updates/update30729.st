update30729
	"self new update30729"
	self withUpdateLog: '12746 DoesNotUnderstandCatcher cleanup
	https://pharo.fogbugz.com/f/cases/12746

12740 testClassDescriptionRespectsPolymorphismWithTraitDescription failing
	https://pharo.fogbugz.com/f/cases/12740


'.
	self loadTogether: self script382 merge: false.
	UserManager instVarNamed: 'default' put: nil.
UserManager initialize.
	self flushCaches.
