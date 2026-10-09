$htmlFiles = Get-ChildItem -Path "e:\Projects\Web projects\SCHOOL SOFTWARE" -Filter *.html

foreach ($file in $htmlFiles) {
    $content = Get-Content -Path $file.FullName -Raw
    # Replace instances of Dashboard.html with index.html
    $newContent = $content -replace "Dashboard\.html", "index.html"
    
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent
    }
}
