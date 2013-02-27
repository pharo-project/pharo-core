as yet unclassified
testCallbackWrongReturn
	"there is an issue with callback return. If it fails I cannot see how we can catch the exception and continue"
	"so this test is supposed to fail for now."
	"In the future we might accept enumeration representation values (int/uint) and fix this"
	self skip.
	self should: [Error signal. self primExecuteCallbackEnumReturn: self callbackWrongReturn ] raise: NBNativeCodeError