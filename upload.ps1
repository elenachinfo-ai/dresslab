$user = 'u3458917'
$pass = 'Constantine01?!'
$base = 'ftp://ftp.magcard.ru'
$wc = New-Object System.Net.WebClient
$wc.Credentials = New-Object System.Net.NetworkCredential($user, $pass)

# Upload to webhellen.com folder
$wc.UploadFile("$base/www/webhellen.com/kp.html", 'C:\Users\lena\Desktop\Start\dresslab-kp.html')
Write-Host 'kp.html -> webhellen.com/ ok'

# Create subdirs
$d1 = [System.Net.FtpWebRequest]::Create("$base/www/webhellen.com/ipg")
$d1.Method = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
$d1.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
try { $d1.GetResponse().Close() } catch {}
$d2 = [System.Net.FtpWebRequest]::Create("$base/www/webhellen.com/jpg2")
$d2.Method = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
$d2.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
try { $d2.GetResponse().Close() } catch {}

# Upload media
$wc.UploadFile("$base/www/webhellen.com/ipg/photo1.jpg", 'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58.jpg')
$wc.UploadFile("$base/www/webhellen.com/ipg/photo2.jpg", 'C:\Users\lena\Desktop\Start\ipg\photo_2026-06-14_19-15-58 (2).jpg')
$wc.UploadFile("$base/www/webhellen.com/ipg/video.mp4", 'C:\Users\lena\Desktop\Start\ipg\video_2026-06-14_19-20-56.mp4')
$wc.UploadFile("$base/www/webhellen.com/jpg2/hero.mp4", 'C:\Users\lena\Desktop\Start\jpg2\video_2026-06-14_19-30-08.mp4')
Write-Host 'Media uploaded!'

Write-Host 'DONE: https://webhellen.com/kp.html'
