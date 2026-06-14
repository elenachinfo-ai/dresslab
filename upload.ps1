$user = "u3458917"
$pass = "Constantine01?!"
$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$b = "ftp://ftp.magcard.ru/www/webhellen.com/jpg3"
$src = "C:\Users\lena\Desktop\Start\jpg3"

$wc.UploadFile("$b/1.jpg", "$src\_1.jpg")
Write-Host "1.jpg"
$wc.UploadFile("$b/2.jpg", "$src\_2.avif")
Write-Host "2.jpg"
$wc.UploadFile("$b/3.jpg", "$src\_3.jpg")
Write-Host "3.jpg"
$wc.UploadFile("$b/4.jpg", "$src\_4.jpg")
Write-Host "4.jpg"
$wc.UploadFile("$b/5.gif", "$src\0525.gif")
Write-Host "5.gif"
$wc.UploadFile("ftp://ftp.magcard.ru/www/webhellen.com/kp.html", "C:\Users\lena\Desktop\Start\dresslab-kp.html")
Write-Host "HTML DONE"
