emitModRM: emitter code: rCode immSize: immSize

	"Receiver is register, hence mod = 3 
	immSize is ignored"

	^ emitter emitMod: 3 reg: rCode rm: self code