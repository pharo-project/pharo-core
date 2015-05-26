floatsMatchingPlatform
	"Answer true if floats are store in platform native endianesness.
	
	This is false for Squeak on x86 , since they are always stored in bigendian format.
	Cog promising to always use native format for floats.
	"
	
	^ self isCogVM