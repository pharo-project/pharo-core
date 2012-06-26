private accessing
templateVersion 
	^ 'version{1}: spec
	"Auto-generated method"
	<version: ''{2}'' imports: #({3})>
	
	spec for: #common do: [
		spec blessing: #release.
		spec timestamp: ''{4}''.
		spec description: ''{5}'' ].
	
	spec for: #pharo do: [
{6}.

	{7}
	{8} ].'