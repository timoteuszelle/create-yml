<#
Author: Tim Zelle
needed some .yml templates
#> 

$file = (Get-Content -Path c:\temp\files\lijst.txt)
$text = (Get-Content -path c:\temp\files\template.txt)
foreach ($line in $file) {$item = (New-Item -path c:\temp\files\$line.yml -ItemType file)
Add-Content $item ($text)
}