protocolsFor: aClass

	^ aClass protocols select: [:e | self methods anySatisfy: [:m | m category = e ]].