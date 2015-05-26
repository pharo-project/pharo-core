fetchPointer: index ofObject: oop
	"Answer an instance variable value at given index for given oop.
	No range checking performed.
	
	Output: EAX"
	| reg mem |
	(index isBlock or: [ oop isBlock]) ifTrue: [ ^ self simpleCall ].

	"shortcut if arguments are not blocks"
	reg := oop.
	reg isMem ifTrue: [ asm mov: oop to: EAX. reg := EAX ].

	mem := reg ptr32.

	index isInteger ifTrue: [
		mem displacement: (self baseHeaderSize+ (index*self oopSize)) asImm ]
	ifFalse: [ | idx  |
		idx := index.
		index isMem ifTrue: [ 
			"index stored at pointer" 
			asm mov: index to: ECX.
			idx := ECX.
			].
		mem index: idx; 
			scale: self oopSize;
			displacement: self baseHeaderSize asImm ].
	
	asm mov: mem to: EAX.
	^ EAX
