baseline10: spec
    <version: '1.0-baseline'>
    
    spec for: #squeakCommon do: [
        spec blessing: #baseline.
        spec description: 'FFI-Examples removed from repository!'.
        spec repository: 'http://source.squeakfoundation.org/FFI'.
        
        spec package: 'FFI-Pools'.
        spec package: 'FFI-Kernel'.
        spec package: 'FFI-Tests'.
        spec package: 'FFI-Examples' with: [ 
            spec postLoadDoIt: #ffiExampleInitialization10 ] ]
        
