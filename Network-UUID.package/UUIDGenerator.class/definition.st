Object subclass: #UUIDGenerator
	instanceVariableNames: 'timeLow timeMid timeHiAndVersion clockSeqHiAndReserved clockSeqLow node randomCounter randomGenerator semaphoreForGenerator'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Network-UUID'