calculateExtent: baseExtent
	^ (baseExtent x + self paddingLeft + self paddingRight)@(baseExtent y + self paddingBottom + self paddingTop)