Object subclass: #Socket
	instanceVariableNames: 'semaphore socketHandle readSemaphore writeSemaphore'
	classVariableNames: 'Connected DeadServer InvalidSocket OtherEndClosed Registry RegistryThreshold TCPSocketType ThisEndClosed UDPSocketType Unconnected WaitingForConnection'
	poolDictionaries: ''
	category: 'Network-Kernel'