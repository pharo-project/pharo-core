PharoKernel
shrinkToKernel

	"
	WARNING:	THIS METHOD WILL DESTROY YOUR IMAGE

	Use with cation and only on fresh Pharo-Core images 
	"

	[ self privShrinkingProcess ] forkAt: 40.

	Processor terminateActive.
	
