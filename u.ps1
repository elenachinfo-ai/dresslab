$wc=New-Object System.Net.WebClient
$wc.Credentials=New-Object System.Net.NetworkCredential('u3458917','Constantine01?!')
$b='ftp://ftp.magcard.ru/www/webhellen.com/ipg'
$wc.UploadFile("$b/video.mp4",'C:\Users\lena\Desktop\Start\ipg\video_2026-06-14_19-20-56.mp4')
Write-Host 'video ok'
$wc.UploadFile("$b/photo2.jpg",'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58 (2).jpg')
Write-Host 'photo2 ok'
$wc.UploadFile("$b/photo1.jpg",'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58.jpg')
Write-Host 'photo1 ok'
$wc.UploadFile('ftp://ftp.magcard.ru/www/webhellen.com/kp.html','C:\Users\lena\Desktop\Start\dresslab-kp.html')
Write-Host 'html ok'
