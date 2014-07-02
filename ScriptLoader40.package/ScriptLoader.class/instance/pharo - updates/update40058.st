update40058
	"self new update40058"
	DangerousClassNotifier disable.
ClassHierarchyTest fixSlotScope.
[| block |
    block := [ :class | 
    class instVarNames
        withIndexDo: [ :ivarName :index | 
            class layout slotScope
                at: index
                put:
                    ((InstanceVariableSlot named: ivarName asSymbol)
                        index: index + class superclass allInstVarNames size;
                        yourself) ] ].

block value: OCSlotVariable.
block value: OCSlotVariable classSide.
block value: SHA256.
block value: SHA256 classSide.] value.
.
	self withUpdateLog: '13411 Some Slot instances left...re-run cleanup
	https://pharo.fogbugz.com/f/cases/13411

13453 add LinkWrapper and some comments for Slots
	https://pharo.fogbugz.com/f/cases/13453

13454 Failing test: SlotIntegrationTest.testSlotScopeParallelism
	https://pharo.fogbugz.com/f/cases/13454'.
	self loadTogether: self script58 merge: false.
	DangerousClassNotifier enable.
.
	self flushCaches.
