<#
Author: Tim Zelle
needed some .yml templates
#> 
$file = (Get-Content -Path c:\temp\files\lijst.txt)
$text = (Get-Content -path c:\temp\files\template.txt)
[int]$counter = (Read-Host "Type the last known used sequence number. (for example 41, the next one will be 042-somthing.yml")
[int]$nexseq  = ($counter +[int]1) 

    foreach ($line in $file) {
    $i =  "{0:D3}" -f $nexseq++
    [string]$seq = $i
    $filename =  "$seq-$line.yml"
    $item = (New-Item -path c:\temp\files\$filename -ItemType file)
    Add-Content $item ($text)
}