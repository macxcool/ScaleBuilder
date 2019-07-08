# This is just a temporary script to help me figure out how I want to do this .

. ./ScaleBuilder.ps1

[xml]$scalesData = Get-Content -Path ./scales.xml
[xml]$instrumentData = Get-Content -Path ./instruments.xml

[string]$lilypondHead = @"
\language "english"
\absolute {
    \clef treble
    \time 4/4
    \key c \major
"@

[string]$startingNote = 'C4'

[int[]]$majorScale = ($scalesData.SelectNodes('//Scale') | Where-Object -Property Name -eq 'Major').Intervals.split(',')

$intervals = @{
    C=0;
    D=2;
    E=4;
    F=5;
    G=7;
    A=9;
    B=11
}

[int]$octaveCount = 2
do {
    ForEach ($interval in $majorScale) {
    
    }    
} while ($count -le $octaveCount)
