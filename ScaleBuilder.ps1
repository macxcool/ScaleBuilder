function get-scale {
    [CmdletBinding()]
    param (
        # Type of scale
        [Parameter(Mandatory=$true)]
        [ValidateSet('Major','Harmonic Minor','Natural Minor','Melodic Minor')] # could use a script to access the xml
        [string]$scaleType,

        # Tonic note of scale with upper-case pitch, accidental and octave (e.g. Eb3)
        [Parameter(Mandatory=$false)]
        [ValidatePattern('[A-F][b#]{0,1}\d')]
        [string]$tonicNote='C4',

        # number of octaves to span
        [Parameter(Mandatory=$false)]
        [ValidateSet(1,2,3,4)]
        [int]$octaves=3
    )
    
    begin {
        # Load the xml scale data into an object
        [xml]$scaleData = Get-Content -Path ./scales.xml
        # Get the info that represents this scale type
        $thisScale = $scaleData.SelectNodes('//Scale') | Where-Object -Property Name -eq $scaleType
    }
    
    process {
        
    }
    
    end {
    }
}

function get-nextnote {
    [CmdletBinding()]
    param (
       # Initial note
       [Parameter(Mandatory=$true)]
       [String]$initialNote,

       # Interval to next note
       [Parameter(Mandatory=$true)]
       [int]$interval
    )
    
    begin {
        
        $intervals = @{
            C=0;
            D=2;
            E=4;
            F=5;
            G=7;
            A=9;
            B=11
        }
    }
    
    process {
        # Get the next letter name in the alphabet
        # If we cast this to 'char' and then 'int' we can add to it and then cast it back
        [string]$nextNoteLetter = [char]([int][char]$initialNote + 1) # only in Powershell ;-)
        if ($nextNoteLetter -eq 'H') {
            $nextNoteLetter = 'A'
        }

        # Determine if an accidental is needed
    }
    
    end {
    }
}