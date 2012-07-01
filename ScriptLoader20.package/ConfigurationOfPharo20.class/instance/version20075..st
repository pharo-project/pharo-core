versions
version20075: spec
	"Auto-generated method"
	<version: '20075' imports: #('2.0-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec timestamp: '16 May 2012 2:17:21 pm'.
		spec description: 'Issue 5906:	Better comment for Class>>#copy
	http://code.google.com/p/pharo/issues/detail?id=5906
	
Issue 5898:	Fixing version browsing and ring historical behavior
	http://code.google.com/p/pharo/issues/detail?id=5898
	
Issue 5895:	Change History separator in nautilus history
	http://code.google.com/p/pharo/issues/detail?id=5895

Issue 5894:	Mini improvement in MethodWidget API
	http://code.google.com/p/pharo/issues/detail?id=5894
	' ].
	
	spec for: #pharo do: [
		self version20075Kernel: spec.
		self version20075Core: spec.
		self version20075Environment: spec.

		spec preLoadDoIt: #version20075PreLoad.
	 ].