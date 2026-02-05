$content = Get-Content 'checkout.html' -Raw -Encoding UTF8

# Fix common encoding issues
$fixes = @{
    'Ã¡' = 'á'
    'Ã ' = 'à'
    'Ã£' = 'ã'
    'Ã©' = 'é'
    'Ãª' = 'ê'
    'Ã­' = 'í'
    'Ã³' = 'ó'
    'Ãµ' = 'õ'
    'Ãº' = 'ú'
    'Ã§' = 'ç'
    'Ã'  = 'Á'
    'Ã‰' = 'É'
    'Ã"' = 'Ó'
}

foreach ($key in $fixes.Keys) {
    $content = $content -replace [regex]::Escape($key), $fixes[$key]
}

$content | Out-File 'checkout.html' -Encoding UTF8 -NoNewline
Write-Host "Fixed encoding issues!"
