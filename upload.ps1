$user = "u3458917"
$pass = "Constantine01?!"
$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$b = "ftp://ftp.magcard.ru/www/webhellen.com/jpg3"
$src = "C:\Users\lena\Desktop\Start\jpg3"

# Upload all 17
for ($i=1; $i -le 17; $i++) {
    $files = Get-ChildItem "$src\_$i.*"
    if ($files) {
        $ext = $files.Extension
        $wc.UploadFile("$b/$i$ext", $files.FullName)
        Write-Host "$i$ext"
    }
}

$wc.UploadFile("ftp://ftp.magcard.ru/www/webhellen.com/kp.html", "C:\Users\lena\Desktop\Start\dresslab-kp.html")
Write-Host "HTML DONE"
