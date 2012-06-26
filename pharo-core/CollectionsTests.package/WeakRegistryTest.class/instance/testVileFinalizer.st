tests
testVileFinalizer
	" this test checks that manipulation (or accessing) weak registry 
	does not leads to deadlock, when performed from within #finalize implementation"
	
	| reg villian proc locked |
	
	reg := WeakRegistry new.
	WeakArray removeWeakDependent: reg.  "to prevent test interference with finalization process"
	
	villian := VileFinalizer new initialize: reg.  "add object with vile finalization to registry"
	
	locked := true. "be pessimistic"

	proc := [ reg finalizeValues. locked := false ] newProcess.
	villian := nil.	
	Smalltalk garbageCollect.
	
	proc resume.
	100 milliSeconds asDelay wait. "give chance for created process to run "
	
	proc isTerminated ifFalse: [ proc terminate ].

	self assert: locked == false.
