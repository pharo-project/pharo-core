storeChannelsRed: r green: g blue: b alpha: a in: aBitmap depth: depth

	1 to: aBitmap size do: [ :index | aBitmap integerAt: index put: (self toPixelValueRed: (r atWrap: index)  green: (g atWrap: index) blue: (b atWrap: index) alpha: (a atWrap: index) depth: depth )  ]