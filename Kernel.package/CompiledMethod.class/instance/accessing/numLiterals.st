numLiterals
    "Answer the number of literals used by the receiver."
    
    Smalltalk vm isSpur ifTrue: [ ^ self header bitAnd: 16r7FFF ]. 
    ^ (self header bitShift: -9) bitAnd: 16rFF