instructionsAmbiguous
	"These instructions have differing meaning based on arguments. We drew the short straw, and the other versions group emitter decides whether we were in fact the intended target"
	^#("Disambiguated using emitsddisambiguate:"
		(#movsd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F10 "C2" 16rF2000F11 )
		(#cmpsd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000FC2 0 ))