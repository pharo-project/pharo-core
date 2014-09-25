update40252
	"self new update40252"
	self withUpdateLog: '12111 (Date readFrom: 4.2.2013 readStream pattern: d.m.yy) ==>> 4 February 2020
	https://pharo.fogbugz.com/f/cases/12111

13193 Regular expression field should not open debugger when making a syntax error
	https://pharo.fogbugz.com/f/cases/13193'.
	self loadTogether: self script252 merge: false.
	self flushCaches.
