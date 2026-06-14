$wc=New-Object System.Net.WebClient
$wc.Credentials=New-Object System.Net.NetworkCredential('u3458917','Constantine01?!')
$wc.UploadFile('ftp://ftp.magcard.ru/www/webhellen.com/kp.html','C:\Users\lena\Desktop\Start\dresslab-kp.html')
Write-Host 'ok'
