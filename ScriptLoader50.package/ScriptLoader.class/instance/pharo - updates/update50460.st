update50460
	"self new update50460"
	self withUpdateLog: '17044 Rename superclass does not make subclasses packages dirty
	https://pharo.fogbugz.com/f/cases/17044

16988 GTExample depends on Nautilus
	https://pharo.fogbugz.com/f/cases/16988

17008 Failing test: ClassTest testClassRespectsPolymorphismWithTrait
	https://pharo.fogbugz.com/f/cases/17008'.
	self loadTogether: self script50460 merge: false.
	
SystemAnnouncer restoreAllNotifications.
	self flushCaches.
