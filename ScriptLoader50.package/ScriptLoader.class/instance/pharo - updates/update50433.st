update50433
	"self new update50433"
	
DangerousClassNotifier disable.
	self withUpdateLog: '16984 fixed menu on category in nautilus
	https://pharo.fogbugz.com/f/cases/16984

16981 Round the top corners of MenuTitleMorph if the menu itself uses rounded corners
	https://pharo.fogbugz.com/f/cases/16981

16973 clean all methods of point
	https://pharo.fogbugz.com/f/cases/16973'.
	self loadTogether: self script50433 merge: false.
	
DangerousClassNotifier enable.
	self flushCaches.
