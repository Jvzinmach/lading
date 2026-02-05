$content = Get-Content 'checkout.html' -Raw -Encoding UTF8

# Lista completa de correções
$content = $content -replace 'CardÃ¡pio AutomÃ¡tico', 'Cardápio Automático'
$content = $content -replace 'hidrataÃ§Ã£o', 'hidratação'
$content = $content -replace 'definiÃ§Ã£o', 'definição'
$content = $content -replace 'queima rÃ¡pida', 'queima rápida'
$content = $content -replace 'glÃºteos', 'glúteos'
$content = $content -replace 'acadÃªmico', 'acadêmico'
$content = $content -replace 'DiagnÃ³stico', 'Diagnóstico'
$content = $content -replace 'MetabÃ³lico', 'Metabólico'  
$content = $content -replace 'prÃ³ximo', 'próximo'
$content = $content -replace 'Ã³lico', 'ólico'
$content = $content -replace 'mÃ©todo', 'método'
$content = $content -replace 'prÃ¡tica', 'prática'
$content = $content -replace 'fÃ¡cil', 'fácil'
$content = $content -replace 'dÃºvidas', 'dúvidas'
$content = $content -replace 'Ãºnico', 'único'
$content = $content -replace 'Ã­ndice', 'índice'
$content = $content -replace 'exercÃ­cios', 'exercícios'
$content = $content -replace 'diÃ¡rio', 'diário'
$content = $content -replace 'calÃ³rico', 'calórico'
$content = $content -replace 'bÃ¡sico', 'básico'

$content | Out-File 'checkout.html' -Encoding UTF8 -NoNewline
Write-Host "All encoding issues fixed!"
