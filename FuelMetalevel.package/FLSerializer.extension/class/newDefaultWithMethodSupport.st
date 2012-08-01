*FuelMetalevel
newDefaultWithMethodSupport
	| serializer |
	serializer := self new. 
	serializer analyzer useLightMappersWithMethodSupport.
	^ serializer