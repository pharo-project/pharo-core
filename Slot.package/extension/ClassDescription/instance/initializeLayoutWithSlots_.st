initializeLayoutWithSlots: slots
	| offset superlayout|
	superlayout := superclass layout.
	offset := superlayout size.
	
	"create the new layout and copy in the super slots"
	layout := self layoutSized: slots size + offset.
	layout replaceFrom: 1 to: offset with: superlayout.
	
	"create new slots"
	slots withIndexDo: [ :slot :index|
		layout at: offset + index put: slot asSlot].
	layout finalize.
	
	"backup solution to create instvar names"
	instanceVariables := Array new: slots size.
	1 to: slots size do: [ :index| 
		instanceVariables at: index put: (layout at: index + offset) name].