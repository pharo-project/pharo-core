update30786
	"self new update30786"
	self withUpdateLog: '13021 ClassTest>>#testRenaming is failing - make temporary package consistent across ClassTest and CompiledMethodTest
	https://pharo.fogbugz.com/f/cases/13021

12920 Primitive Pragma not parsed in all cases, error code not supported
	https://pharo.fogbugz.com/f/cases/12920

12996 ClassTest>>#testRenaming leaves dirty package Dummy-Tests-Class behind
	https://pharo.fogbugz.com/f/cases/12996

'.
	self loadTogether: self script439 merge: false.
	self flushCaches.
