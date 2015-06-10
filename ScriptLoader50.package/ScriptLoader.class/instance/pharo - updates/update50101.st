update50101
	"self new update50101"
	self withUpdateLog: '15708 Deleting a class with nautilus raises an error
	https://pharo.fogbugz.com/f/cases/15708

12736 Text Selection Not Updated
	https://pharo.fogbugz.com/f/cases/12736

15694 Browse versions does not take focus
	https://pharo.fogbugz.com/f/cases/15694

12775 Nautilus: Performance problem when selecting group with many classes
	https://pharo.fogbugz.com/f/cases/12775

15723 It would be nice if Kernel-Traits (e.g. TClass) dont use #class because its too low level
	https://pharo.fogbugz.com/f/cases/15723'.
	self loadTogether: self script50101 merge: false.
	self flushCaches.
