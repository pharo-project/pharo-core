testNoPragma
	"self debug: #testDoublePrimitive"
	self shouldnt: [OpalCompiler new parse: self methodNoPragma in: self class notifying: nil] raise: Error