pharo - updates
update20127
	"self new update20127"
	self withUpdateLog: '- Issue 5967:	Use FileSystem for everything (part three). **THANKS** 
camillo for this effort.... 

Files-CamilloBruni.ducasse.251
System-FileRegistry-CamilloBruni.16
System-Support-CamilloBruni.634
Kernel-CamilloBruni.1103'.
	self loadTogether: self script117 merge: false.
	self removeAllRepositories.
self addHomeRepositoryToAllPackages.
	self flushCaches.
