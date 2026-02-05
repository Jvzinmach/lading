$ErrorActionPreference = 'Stop'

# Read file as bytes and convert to string with correct encoding
$bytes = [System.IO.File]::ReadAllBytes("$PWD\checkout.html")
$content = [System.Text.Encoding]::UTF8.GetString($bytes)

# Fix all broken characters - comprehensive list
$fixes = @(
    @('estǭ', 'está'),
    @('Defini�ǜo', 'Definição'),
    @('defini�ǜo', 'definição'),
    @('rǭpida', 'rápida'),
    @('hidrata�ǜo', 'hidratação'),
    @('ap�s', 'após'),
    @('glǧteos', 'glúteos'),
    @('glǟ�teos', 'glúteos'),
    @('abdǟ�men', 'abdômen'),
    @('sǟ�o', 'são'),
    @('nǟ�veis', 'níveis'),
    @('vǟ�o', 'vão'),
    @('defin', 'defin'),
    @('metabol', 'metabol'),
    @('Anāõlise', 'Análise'),
    @('Concluīūda', 'Concluída'),
    @('prōūnto', 'pronto')
)

foreach ($fix in $fixes) {
    $content = $content.Replace($fix[0], $fix[1])
}

# Save with UTF-8 encoding
$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText("$PWD\checkout.html", $content, $utf8)

Write-Host "✅ Fixed all encoding errors!"
