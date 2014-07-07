initializeBytecodeTable
	"IRSistaV1BytecodeGenerator  initialize"
	"Defines all the  instructions for the Compiler and the Interpreter.
	The following  tuple format is:

	#( Selector)

	Selector is the method in the Interpreter that gets executed for the given .
	Common Send selector position within the specialSelectorsArray is hard code in the Interpreter, see senders of Interpreter specialSelector:."

	^ self bytecodeTableFrom:
	#(
		"SINGLE BYTECODES"
	
		"single push"
		(0  15 pushReceiverVariable)
		(16  31 pushLiteralVariable)
		(32  63 pushLiteralConstant)
		(64  75 pushTemporaryVariable)
		(76 pushReceiver)
		(77 pushConstantTrue)
		(78 pushConstantFalse)
		(79 pushConstantNil)
		(80 pushConstantZero)
		(81 pushConstantOne)
		(82 pushActiveContextOrProcess)
		(83 duplicateTop)
		
		(84 87 UNASSIGNED)
		
		"returns"
		(88 returnReceiver)
		(89 returnTrue)
		(90 returnFalse)
		(91 returnNil)
		(92 returnTopFromMethod)
		(93 returnNilFromBlock)
		(94 returnTopFromBlock)
		
		"nop"
		(95 nop)
		
		"single sends"
		(96 111 sendArithmeticSelector)
		(112 127 sendCommonSelector)
		(128 175 sendLiteralSelector)
		
		"single jumps"
		(176 183 shortJumpForward)
		(184 191 shortJumpIfTrue)
		(192 199 shortJumpIfFalse)
		
		"single pop & popInto"
		(200 207 storePopReceiverVariable)
		(208 215 storePopTemporaryVariable)
		(216 popStack)
		
		(217 223 UNASSIGNED)
		
		"EXTENDED BYTECODES"	
		(224 extensionA)
		(225 extensionB)
		(226 extendedPushReceiverVariable)
		(227 extendedPushLiteralVariable)
		(228 extendedPushLiteralConstant)
		(229 extendedPushTemporaryVariable)
		(230 extendedPushNClosureTemporaryVariable)
		(231 extendedPushInteger)
		(232 extendedPushCharacter)
		(233 extendedPushOrPopIntoArray)
		(234 extendedSend)
		(235 extendedSuperSend)
		(236 extendedTrap)
		(237 extendedUnconditionalJump)
		(238 extendedJumpIfTrue)
		(239 extendedJumpIfFalse)
		(240 extendedStorePopReceiverVariable)
		(241 extendedStorePopLiteralVariable)
		(242 extendedStorePopTemporaryVariable)
		(243 extendedStoreReceiverVariable)
		(244 extendedStoreLiteralVariable)
		(245 extendedStoreTemporaryVariable)
		
		(246 247 UNASSIGNED)
		
		"DOUBLE EXTENDED BYTECODES"
		(248 doubleExtendedCallPrimitive)
		(249 doubleExtendedPushFloat)
		(250 doubleExtendedPushClosureCopyNumCopiedValuesNuumArgsJumpSize)
		(251 doubleExtendedPushRemoteTempInVectorAt)
		(252 doubleExtendedStoreRemoteTempInVectorAt)
		(253 doubleExtendedStorePopRemoteTempInVectorAt)
		
		(254 255 UNASSIGNED)

	)
