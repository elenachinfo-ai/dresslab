$user = "u3458917"
$pass = "Constantine01?!"

# Create jpg3 dir on server
$req = [System.Net.FtpWebRequest]::Create("ftp://ftp.magcard.ru/www/webhellen.com/jpg3")
$req.Method = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
$req.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
try { $req.GetResponse().Close() } catch { }

$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$b = "ftp://ftp.magcard.ru/www/webhellen.com/jpg3"
$src = "C:\Users\lena\Desktop\Start\jpg3"

$wc.UploadFile("$b/1.jpg", "$src\_1.jpg")
$wc.UploadFile("$b/2.jpg", "$src\86a4b3b8-0647-4853-9b10-037324696866.png")
$wc.UploadFile("$b/3.jpg", "$src\932c3bf585911f1a27c4a5fe05787c5_1.jpeg")
$wc.UploadFile("$b/4.jpg", "$src\fashion-african-woman-red-dress-600nw-2147305089.webp")
$wc.UploadFile("$b/5.gif", "$src\0525.gif")
$wc.UploadFile("ftp://ftp.magcard.ru/www/webhellen.com/kp.html", "C:\Users\lena\Desktop\Start\dresslab-kp.html")
Write-Host "DONE"
