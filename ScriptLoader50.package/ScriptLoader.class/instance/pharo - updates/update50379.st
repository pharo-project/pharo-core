update50379
	"self new update50379"
	
Gofer new 
	smalltalkhubUser: 'Moose' project: 'Glamour'; 
	package: 'ConfigurationOfGlamourCore'; 
	load.
	self withUpdateLog: '16750 Update Spotter
	https://pharo.fogbugz.com/f/cases/16750'.
	self loadTogether: self script50379 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.2.14'.self flushCaches.
