breadcrumbSeparatorStyleFor: aBrick

	aBrick
		color: self breadcrumbItemBackgroundColor;
		borderWidth: self breadcrumbSeparatorLineWidth;
		borderColor: self breadcrumbSeparatorColor;
		renderer: GTSpotterBreadcrumbSeparatorRenderer new;
		width: self breadcrumbSeparatorWidth;
		height: self breadcrumbHeight + self outerBorderWidth.