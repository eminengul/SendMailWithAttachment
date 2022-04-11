$PSDefaultParameterValues['*:Encoding'] = 'utf8'#if you using utf8 charset, you can using this line
$EmailTo = "receivermail@gmail.com"
$EmailFrom = "sendermail@gmail.com"
$Subject = "Subject" 

$filename="filename"
$SMTPServer = "smtp@gmail.com" 
$attachment = "filepath"
$Bcc="bccmail@gmail.com"
$EmailBody = @"
 <br>Hello, this is a html message.

"@


  

Send-MailMessage -To $EmailTo -From $EmailFrom -Bcc $Bcc -Subject $Subject -Body $EmailBody -BodyAsHtml -Attachments $attachment -SmtpServer $SmtpServer
