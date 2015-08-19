glGetAttribute: attr
	| value result |
   value := NativeBoost allocate: 4.
	self glGetAttribute: attr into: value.
	result := value nbUInt32AtOffset: 0.
	value free.
	^result