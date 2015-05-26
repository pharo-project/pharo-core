emitMod: mod reg: reg rm: rm
	"Emit MODR/M byte.
	mmrrrxxx
	
	mm = mod
	rrr = REG (r8/r16/r32/mm/xmm
	xxx = r/m
	"
	
	^ self emitByte: (mod & 3) << 3 + (reg & 7) << 3 + (rm & 7)
	