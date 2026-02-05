$lines = Get-Content 'checkout.html'
$fixed = $lines[0..1320]
$fixed += '</html>'
$fixed | Out-File 'checkout.html' -Encoding utf8
Write-Host "Fixed! File now has" $fixed.Count "lines"
