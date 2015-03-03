update40530
	"self new update40530"
	self withUpdateLog: '15040 Remove Vistary Theme
	https://pharo.fogbugz.com/f/cases/15040

15038 Typo: Rename AbtractCache to AbstractCache
	https://pharo.fogbugz.com/f/cases/15038

15029 remove empty package Polymorph-Geometry
	https://pharo.fogbugz.com/f/cases/15029

13042 GSoC flags in Morph still necessary?
	https://pharo.fogbugz.com/f/cases/13042'.
	self loadTogether: self script530 merge: false.
	
ScriptLoader new deletePackage: 'Polymorph-Geometry'.
	self flushCaches.
