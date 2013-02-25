pharo - updates
update20571
	"self new update20571"
	Gofer it
	squeaksource3: 'PharoInbox';
	version:'Fuel-MartinDias.761';
	version: 'FuelTests-MartinDias.309';
	version: 'FuelTools-Debugger-MartinDias.1';
	version: 'FuelCommandLineHandler-MartinDias.20';
	version: 'FuelSystem-FileRegistry-MartinDias.1';
	load.
	self withUpdateLog: 'Issue 7201:	Check Fuel: merge back changes, load latest version
	https://code.google.com/p/pharo/issues/detail?id=7201
	'.
	self loadTogether: self script546 merge: false.
	self flushCaches.
