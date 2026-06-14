$wc=New-Object System.Net.WebClient
$wc.Credentials=New-Object System.Net.NetworkCredential('u3458917','Constantine01?!')
$wc.UploadFile('ftp://ftp.magcard.ru/www/webhellen.com/ipg/video.mp4','C:\Users\lena\Desktop\Start\ipg\video_2026-06-14_19-20-56.mp4')
Write-Host 'video re-uploaded'
$wc.UploadFile('ftp://ftp.magcard.ru/www/webhellen.com/kp.html','C:\Users\lena\Desktop\Start\dresslab-kp.html')
Write-Host 'HTML updated'
