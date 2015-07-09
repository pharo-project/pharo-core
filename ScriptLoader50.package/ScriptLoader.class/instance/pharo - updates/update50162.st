update50162
	"self new update50162"
	self withUpdateLog: '15912 Classes are not rebuilt when changing only slot parameters
	https://pharo.fogbugz.com/f/cases/15912

14310 Renaming a package just by changing upper/lowercase removes the package
	https://pharo.fogbugz.com/f/cases/14310

15926 Monticello should raise MCRepositoryError and not Error
	https://pharo.fogbugz.com/f/cases/15926

12190 Nautilus right click menus do not work on empty panes 
	https://pharo.fogbugz.com/f/cases/12190'.
	self loadTogether: self script50162 merge: false.
	self flushCaches.
