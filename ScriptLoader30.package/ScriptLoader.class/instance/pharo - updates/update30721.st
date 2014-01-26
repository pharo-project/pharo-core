update30721
	"self new update30721"
	self withUpdateLog: '12077 MNU in AdditionalMethodState>>analogousCodeTo:
	https://pharo.fogbugz.com/f/cases/12077

12712 make sure that all class definition messages without "poolDictionaries" part exist
	https://pharo.fogbugz.com/f/cases/12712

12711 ReleaseTest #testObsoleteClasses fails
	https://pharo.fogbugz.com/f/cases/12711

(with postscript)'.
	self loadTogether: self script374 merge: false.
	UserManager instVarNamed: 'default' put: nil.
UserManager initialize.
	self flushCaches.
