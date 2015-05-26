primGetDriveType: lpRootPathName
	"
		self getDriveType: 'c:\' 
	"
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^ self nbCall: #(UINT GetDriveTypeA(LPCTSTR lpRootPathName)) module: #kernel32