$content = Get-Content 'checkout.html' -Raw -Encoding UTF8

# Lista completa de todas as correções de encoding
$replacements = @{
    'Ã¡'  = 'á'
    'Ã '  = 'à'
    'Ã£'  = 'ã'
    'Ã©'  = 'é'
    'Ãª'  = 'ê'
    'Ã­'  = 'í'
    'Ã³'  = 'ó'
    'Ãµ'  = 'õ'
    'Ãº'  = 'ú'
    'Ã§'  = 'ç'
    'Ã'   = 'Á'
    'Ã‰'  = 'É'
    'Ã"'  = 'Ó'
    'Ã"'  = 'Ô'
    'Ã´'  = 'ô'
    'â€"' = '—'
    'â€"' = '–'
    'â€œ' = '"'
    'â€'  = '"'
    'â€™' = "'"
    'Â°'  = '°'
    'Âª'  = 'ª'
}

# Apply all replacements
foreach ($key in $replacements.Keys) {
    $content = $content -replace [regex]::Escape($key), $replacements[$key]
}

# Specific word fixes
$content = $content -replace 'mÃ©todo', 'método'
$content = $content -replace 'BÃ´nus', 'Bônus'
$content = $content -replace 'BÃ"NUS', 'BÔNUS'
$content = $content -replace 'VitalÃ­cio', 'Vitalício'
$content = $content -replace 'AtualizaÃ§Ãµes', 'Atualizações'
$content = $content -replace 'glÃºteos', 'glúteos'
$content = $content -replace 'definição', 'definição'
$content = $content -replace 'hidrataÃ§Ã£o', 'hidratação'
$content = $content -replace 'definiÃ§Ã£o', 'definição'
$content = $content -replace 'MetabÃ³lico', 'Metabólico'
$content = $content -replace 'DiagnÃ³stico', 'Diagnóstico'
$content = $content -replace 'prÃ¡tica', 'prática'
$content = $content -replace 'fÃ¡cil', 'fácil'
$content = $content -replace 'dÃºvidas', 'dúvidas'
$content = $content -replace 'Ãºnico', 'único'
$content = $content -replace 'calÃ³rico', 'calórico'
$content = $content -replace 'bÃ¡sico', 'básico'
$content = $content -replace 'exercÃ­cios', 'exercícios'
$content = $content -replace 'diÃ¡rio', 'diário'

$content | Out-File 'checkout.html' -Encoding UTF8 -NoNewline
Write-Host "✅ All Portuguese encoding issues fixed!"
Write-Host "Total replacements made: $($replacements.Count)"
