
$path = Get-Content C:\RandD\path.txt

#file exists

foreach ($paths in $path)
    {
        $file = Get-ItemProperty $paths -ErrorAction Ignore
        echo $file.FullName >> "C:\file exists.csv" 
        echo $file.FullName
    }

#file not exists

"==============file not exists======================="
foreach ($paths in $path)
{
    $fileToCheck = $paths
    $a= (Test-Path $fileToCheck -PathType leaf)
        if ($a -eq $false)
    {
        echo $fileToCheck >> "C:\file not exists.csv"
        echo $fileToCheck
    }
}
