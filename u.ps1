$user="u3458917"
$pass="Constantine01?!"
$wc=New-Object System.Net.WebClient
$wc.Credentials=New-Object System.Net.NetworkCredential($user,$pass)
$b="ftp://ftp.magcard.ru/www/webhellen.com/jpg3"
$s="C:\Users\lena\Desktop\Start\jpg3"
for($i=1;$i -le 16;$i++){
  $f=Get-ChildItem "$s\_$i.*"
  if($f){$wc.UploadFile("$b/$i$($f.Extension)",$f.FullName);Write-Host "$i$($f.Extension)"}
}
$wc.UploadFile("ftp://ftp.magcard.ru/www/webhellen.com/kp.html","C:\Users\lena\Desktop\Start\dresslab-kp.html")
Write-Host "DONE"
