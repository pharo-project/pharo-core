Object subclass: #ProcessorScheduler
	instanceVariableNames: 'quiescentProcessLists activeProcess'
	classVariableNames: 'BackgroundProcess HighIOPriority LowIOPriority SystemBackgroundPriority SystemRockBottomPriority TimingPriority UserBackgroundPriority UserInterruptPriority UserSchedulingPriority'
	poolDictionaries: ''
	category: 'Kernel-Processes'