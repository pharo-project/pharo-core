createWindowExW: dwExStyle lpClassName: lpClassName lpWindowName: lpWindowName dwStyle: dwStyle
x: x y: y width: nWidth height: nHeight hWndParent: hWndParent hMenu: hMenu
hInstance: hInstance lParam: lpParam

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout
		stdcall;
		options: #( + optWinUnicode );
		function: #( HWND 'CreateWindowExW' 
			( DWORD dwExStyle,
			LPCTSTR lpClassName,
			LPCTSTR lpWindowName,
			DWORD dwStyle,
			ulong x,
			ulong y,
			ulong nWidth,
			ulong nHeight,
			HWND hWndParent,
			HMENU hMenu,
			HINSTANCE hInstance,
			LPVOID lpParam) ) 
		module: #user32
	