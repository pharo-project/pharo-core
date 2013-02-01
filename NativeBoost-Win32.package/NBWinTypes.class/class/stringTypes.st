initialization
stringTypes
	TCHAR := #NBTCHAR.
	LPTCH := 'TCHAR*'.
	WCHAR := 'wchar_t'.
	LPWCH := 'WCHAR*'.

	LPTSTR := #NBTString.
	LPWSTR := #NBWideString.
	LPSTR := #NBExternalString.
	
	LPCSTR := #LPSTR.
	LPCTSTR := #LPTSTR.
	LPCWSTR := #LPWSTR.
	
	PCSTR := #LPCSTR.
	PCTSTR := #LPCTSTR.
	PCWSTR := #LPCWSTR.
	PSTR := #LPSTR.
	PTSTR := #LPTSTR.
	PWSTR := #LPWSTR.
