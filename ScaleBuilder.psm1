function get-scale {
    [CmdletBinding()]
    param (
        # Type of scale
        [Parameter(Mandatory=$true)]
        [ValidateSet('Major','Harmonic Minor','Natural Minor','Melodic Minor')] # could use a script to access the xml
        [string]$scaleType,

        # Tonic note of scale
        [Parameter(Mandatory=$true)]
        [ValidatePattern('[a-fA-F][b#]{0,1}\d')]
        [string]$tonicNote,

        # number of octaves to span
        [Parameter(Mandatory=$false)]
        [ValidateSet(1,2,3,4)]
        [int]$octaves=3
    )
    
    begin {
        [xml]$scaleData = Get-Content -Path ./scales.xml
    }
    
    process {
        
    }
    
    end {
    }
}