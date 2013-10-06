testSyscall
	self assert: [ :a | a syscall ] bytes: #[16r0F 16r05]