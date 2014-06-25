update40044
	"self new update40044"
	self withUpdateLog: '- add subclass for Slot
- change all Slot objects for that class'.
	self loadTogether: self script44 merge: false.
	[| block |

block := [ :class | class instVarNames withIndexDo: [ :name :index | 
		class layout slotScope 
			at: index put: 
				((InstanceVariableSlot named: name asSymbol) 
					index: index + class superclass allInstVarNames size; 
					yourself) ] ].
			
Smalltalk allClasses do: [ :class | block value: class. block value: class classSide ]] value

.
	self flushCaches.
