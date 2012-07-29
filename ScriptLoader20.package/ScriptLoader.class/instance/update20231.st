pharo - updates
update20231
	"self new update20231"
	self withUpdateLog: 'Issue 6405:	[ENH]: Clean MCCacheRepository
	http://code.google.com/p/pharo/issues/detail?id=6405
	
Issue 6299:	MNU: FileReference class>>methodPassed:
	http://code.google.com/p/pharo/issues/detail?id=6299
	
Issue 6171:	Methods from Trait have nil category	
	http://code.google.com/p/pharo/issues/detail?id=6171

Issue 6074:	Make ChangeSet rely on SystemAnnouncer instead of SystemChangeNotifier	
	http://code.google.com/p/pharo/issues/detail?id=6074'.
	self loadTogether: self script219 merge: false.
	SystemAnnouncer uniqueInstance noMoreNotificationsFor: ChangeSet current.
ChangeSet newChanges: ChangeSet current.
[Object subclass: #DatePrintFormatTester
	instanceVariableNames: 'dayPosition monthPosition yearPosition delimiter monthType yearType date'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KernelTests-Chronology'.
	
Object subclass: #DatePrintFormatTester
	uses: TAssertable
	instanceVariableNames: 'dayPosition monthPosition yearPosition delimiter monthType yearType date'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KernelTests-Chronology']
	on: Error
	do: [ :ex | "All errors are like: No package found for selector... They seem safe to ignore" ].
	self flushCaches.
