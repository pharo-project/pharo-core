shellAbout: hWnd application: szApp other: szOtherStuff icon: hIcon
	"
		self shellAbout: NBWin32Window getFocus application: 'Pharo' other: 'More' icon: (NBWin32Handle new value: 0)
	"
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^ self nbCall: #(int ShellAboutA(
     			HWND hWnd,
         		LPCTSTR szApp,
     			LPCTSTR szOtherStuff,
     			HICON hIcon
		)) module: #shell32