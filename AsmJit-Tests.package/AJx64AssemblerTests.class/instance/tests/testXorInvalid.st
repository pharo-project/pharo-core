testXorInvalid
	"xor registers with non-matching sizes"

	self asmShould: [ :a | a xor: AL to: RAX ] raise: Error.
	self asmShould: [ :a | a xor: RAX to: AL ] raise: Error.
	self asmShould: [ :a | a xor: R8B to: RAX ] raise: Error.
	self asmShould: [ :a | a xor: RAX to: R8B ] raise: Error.	"in 64bit mode AH CH DH and BH cannot be encoded when an REX prefix is present"
	{AH.
	CH.
	DH.
	BH} do: [ :reg | self asmShould: [ :a | a xor: reg to: a R8B ] raise: Error ]