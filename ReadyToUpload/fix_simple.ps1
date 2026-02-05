$content = Get-Content 'checkout.html' -Raw -Encoding UTF8

# Correções específicas de caracteres portugueses
$content = $content -creplace 'Ã¡', 'á'
$content = $content -creplace 'Ã ', 'à'
$content = $content -creplace 'Ã£', 'ã'
$content = $content -creplace 'Ã©', 'é'
$content = $content -creplace 'Ãª', 'ê'
$content = $content -creplace 'Ã­', 'í'
$content = $content -creplace 'Ã³', 'ó'
$content = $content -creplace 'Ãµ', 'õ'
$content = $content -creplace 'Ãº', 'ú'
$content = $content -creplace 'Ã§', 'ç'
$content = $content -creplace 'Ã"', 'Ô'
$content = $content -creplace 'Ã´', 'ô'

# Save without BOM
$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText("$PWD\checkout.html", $content, $Utf8NoBomEncoding)

Write-Host "Fixed all Portuguese characters!"
