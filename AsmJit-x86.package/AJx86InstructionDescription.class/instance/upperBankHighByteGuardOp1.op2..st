code emitting
upperBankHighByteGuardOp1: op1 op2: op2
	"REX prefix and AH BH CH DH don't go along on 64bit"
	(((op1 isUpperBank or: [op1 is64])
		and: [{ AH. BH. CH. DH} includes: op2 ])
		or: [
		((op2 isUpperBank or: [op2 is64])
			and: [{ AH. BH. CH. DH} includes: op1 ])])
		ifTrue: [ 
			Error signal: '64 bit mode doesn''t allow operand combination ', op1 asString, ' with ', op2 asString ]