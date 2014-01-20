core = 7.x
api = 2
projects[] = drupal
; Modules
projects[] = notifications
projects[] = messaging
projects[] = mailhandler
projects[] = mailcomment
projects[] = ctools
projects[] = feeds_comment_processor
projects[] = feeds
projects[] = mimemail
projects[] = pmail
projects[] = phpmailer
projects[] = mailsystem
projects[] = strongarm
projects[] = features
projects[] = references
projects[] = logintoboggan
projects[] = token
projects[] = rules
projects[] = entity
projects[] = comment_notify

; Fixes Driven reporting all files removed and added
; Libraries
;libraries[phpmailer][download][type] = "get"
;libraries[phpmailer][download][url] = ;"http://downloads.sourceforge.net/project/phpmailer/phpmailer%20for%20php5_6/PHPMailer%20v5.1/PHPMailer_v5.1.tar.gz?r=http%3A%2F%2Favatar.rice.edu%2Fjenkins%2Fjob%2Faegir_platforms%2F81%2Fconsole&ts=1323290054&use_mirror=voxel"
;libraries[phpmailer][directory_name] = "phpmailer"
;libraries[phpmailer][type] = "library"

; SimplePie RSS parser
libraries[simplepie][directory_name] = simplepie
libraries[simplepie][download][type] = get
libraries[simplepie][download][url] = http://dev.simplepie.org/SimplePie.compiled.php
libraries[simplepie][copy_file][] = simplepie.compiled.php
libraries[simplepie][overwrite] = TRUE