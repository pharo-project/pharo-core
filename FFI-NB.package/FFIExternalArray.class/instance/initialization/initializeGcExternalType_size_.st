initializeGcExternalType: aType size: aNumber
	self 
		initializeType: aType 
		size: aNumber 
		handleProducer: [ :totalSize | ExternalAddress gcallocate: (type typeSize * size) ]