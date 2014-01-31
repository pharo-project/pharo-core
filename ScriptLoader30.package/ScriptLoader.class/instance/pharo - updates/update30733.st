update30733
	"self new update30733"
	self withUpdateLog: '12758 Class comments missing for Balloon package
	https://pharo.fogbugz.com/f/cases/12758

12766 #cleanUpForProduction more improvements
	https://pharo.fogbugz.com/f/cases/12766

12749 Provide class comments for AsmJIT
	https://pharo.fogbugz.com/f/cases/12749

12760 Class comments missing for package DebuggerFilters
	https://pharo.fogbugz.com/f/cases/12760

12759 Class comments missing for Compiler and CompilerTests package
	https://pharo.fogbugz.com/f/cases/12759

12753 ChangeSorter does not differentiate between changed/removed/added methods
	https://pharo.fogbugz.com/f/cases/12753

'.
	self loadTogether: self script386 merge: false.
	self flushCaches.
