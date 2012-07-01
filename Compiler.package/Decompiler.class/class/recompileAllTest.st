testing
recompileAllTest
	"[Decompiler recompileAllTest]"
	"decompile every method and compile it back; if the decompiler is correct then the system should keep running.  :)"
	
	
	SystemNavigation default allBehaviorsDo: [ :behavior |
		UIManager default informUser: (behavior printString) during: [
			behavior selectorsAndMethodsDo: [ :sel :meth |
				| ast decompiled compiled |
				decompiled := Decompiler new decompile: sel in: behavior.
				ast := self class compilerClass new compile: decompiled in: behavior notifying: nil ifFail: [ self error: 'failed' ].
				compiled := ast generate: meth trailer.
				behavior addSelector: sel withMethod: compiled. ] ] ]