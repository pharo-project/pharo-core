*FuelMetalevel-configuring
useReusableFullMappers

	globalMappersFactory := [self reusableFullGlobalMappers].
	generalMapperFactory := [FLFullGeneralMapper new].