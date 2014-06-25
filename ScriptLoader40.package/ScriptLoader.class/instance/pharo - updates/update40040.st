update40040
	"self new update40040"
	self withUpdateLog: '13287 Failing test: testLayoutIntegrity and testSlotScopeParallelism
	https://pharo.fogbugz.com/f/cases/13287
	
(script in postscript)'.
	self loadTogether: self script40 merge: false.
	[| stackp |

stackp := Context layout slotScope parentScope atName: #stackp.
Context layout slotScope: (Context layout slotScope extend: { stackp}, Context layout slotScope visibleSlots).
(Context layout slotScope  atName: #stackp) index: 3.
(Context layout slotScope  atName: #method) index: 4.
(Context layout slotScope  atName: #closureOrNil) index: 5.
(Context layout slotScope  atName: #receiver) index: 6.

Context layout slotScope parentScope: InstructionStream layout slotScope.
Context class layout slotScope parentScope: InstructionStream class layout slotScope.] value.
	self flushCaches.
