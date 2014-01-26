update30720
	"self new update30720"
	self withUpdateLog: '12701 In GZipReadStream #unzip:to: answer the new file name, but not #unzip:
	https://pharo.fogbugz.com/f/cases/12701

11755 When removing an instance variable, far too many package are dirty after
	https://pharo.fogbugz.com/f/cases/11755

12713 RecentMessageList>>lastClasses: includes obsolete testclasses
	https://pharo.fogbugz.com/f/cases/12713

12726 add command line handler for ImageCleaner
	https://pharo.fogbugz.com/f/cases/12726

'.
	self loadTogether: self script373 merge: false.
	self flushCaches.
