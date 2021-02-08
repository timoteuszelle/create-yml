<#
Author: Tim Zelle
needed some .yml templates
#> 
[int]$counter = (Read-Host "Type the last known sequence number, for example  41")
[int]$nexseq  = ($counter +[int]1) 

$file = (Get-Content -Path c:\temp\files\lijst.txt)
$text = (Get-Content -path c:\temp\files\template.txt)
    foreach ($line in $file) {
    $i =  "{0:D3}" -f $nexseq++
    [string]$seq = $i
    $filename =  "$seq-$line.yml"
    $item = (New-Item -path c:\temp\files\$filename -ItemType file)
    Add-Content $item ($text)
    
}