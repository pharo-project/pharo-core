private accessing
templateBaseline 
	^ 'baseline{1}{2}: spec
	"Auto-generated method"
	<version: ''{3}-baseline{4}''{5}>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: ''http://ss3.gemstone.com/ss/Pharo20'' ].
	
	spec for: #pharo do: [
		spec
{6}.
	
{7} ].'