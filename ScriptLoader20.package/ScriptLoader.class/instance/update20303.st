pharo - updates
update20303
	"self new update20303"
	self withUpdateLog: '6709: MNU MethodRepackaged&gt;&gt;oldProtocolThanks to pharo.ulysse@gmail.com

http://code.google.com/feeds/issues/p/pharo


6685: Nautilus should select Code after creating a new ProtocolThanks to pharo.ulysse@gmail.com

http://code.google.com/feeds/issues/p/pharo'.
	self loadTogether: self script290 merge: false.
	Nautilus  instVarNamed: 'groups' put: nil.
.
	self flushCaches.
