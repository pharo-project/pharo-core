baseline203: spec
    <version: '2.0.3-baseline' imports: #('2.0.1-baseline')>
    spec
        for: #'common'
        do: [ 
            spec
                project: 'Example Project'
                overrides: [ 
                    spec
                        className: 'MetacelloExampleProjectConfig';
                        versionString: '1.0-baseline';
                        preLoadDoIt: #'alternatePreloadForCore';
                        yourself ] ]