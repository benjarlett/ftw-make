; $Id$
;
; Example makefile
; ----------------
; This is an example makefile to introduce new users of drush_make to the
; syntax and options available to drush_make. For a full description of all
; options available, see README.txt.

; This make file is a working makefile - try it! Any line starting with a `;`
; is a comment.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

api = 2
projects[drupal][version] = 7.26
projects[drupal][patch][] = "https://drupal.org/files/issues/drupal7.entity-system.1525176-153.patch"
; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key. The simplest declaration of a project
; looks like this:

; To include the most recent views module:

projects[] = views
projects[] = ctools
projects[] = entity
projects[] = context
projects[] = panels
projects[] = email
projects[] = link
projects[] = admin_menu
projects[] = field_group
projects[] = profile2
projects[] = profile2_regpath
projects[] = devel
projects[] = mimemail
projects[] = simplenews
projects[] = backup_migrate
projects[] = auto_nodetitle
projects[] = metatag
projects[] = oauth
projects[] = disablepwstrength
projects[] = email_registration
projects[] = formblock
projects[] = faq
projects[] = mailhandler
projects[] = logintoboggan
projects[] = login_one_time
projects[] = menu_attributes
projects[] = pathauto
projects[] = r4032login
projects[] = site_map
projects[] = xmlsitemap
projects[] = stringoverrides
projects[] = token
projects[] = twitter
projects[] = twitter_pull
projects[] = rules
projects[] = service_links
projects[] = captcha
projects[] = textcaptcha
projects[] = google_analytics
projects[] = themekey
projects[] = wysiwyg
projects[] = wysiwyg_spellcheck
projects[] = jquery_update
projects[] = block_class
projects[] = module_filter
projects[] = migrate
projects[] = migrate_d2d
projects[] = migrate_extras
projects[] = a11y_titles
projects[] = a11y_checklist
projects[] = eim
projects[] = semantic_fields
projects[] = semanticviews
projects[] = checklistapi
projects[] = adaptivetheme
projects[] = feeds
projects[] = features
projects[] = features_extra
projects[] = uuid
projects[] = uuid_features
projects[] = job_scheduler
projects[] = mailsystem
projects[] = references
projects[] = draggableviews
projects[] = fontello
projects[] = icon
projects[] = redirect
projects[] = views_bulk_operations
projects[] = special_menu_items
projects[] = twitter_block
projects[] = media
projects[] = media_vimeo
projects[] = file_entity
projects[] = field_permissions
projects[superfish][version] = 1.x-dev

; This will, by default, retrieve the latest recommended version of the project
; using its update XML feed on Drupal.org. If any of those defaults are not
; desirable for a project, you will want to use the keyed syntax combined with
; some options.

; If you want to retrieve a specific version of a project:

projects[content_access] = 1.2-beta2
;projects[field_permissions] = 1.0-beta2
;projects[bootstrap] = 3.0
;projects[views_bootstrap] = 2.0

libraries[tinymce][download][type] = get
libraries[tinymce][download][url] = http://download.moxiecode.com/tinymce/tinymce_3.5.10.zip

libraries[superfish][download][type] = get
libraries[superfish][download][url] = https://github.com/mehrpadin/Superfish-for-Drupal/archive/1.x.zip

libraries[easing][download][type] = get
libraries[easing][download][url] = https://github.com/gdsmith/jquery.easing/blob/master/jquery.easing.1.3.min.js

libraries[theworkshop_videoplayer][download][type] = get
libraries[theworkshop_videoplayer][download][url] = http://www.theworkshop.co.uk/wp-content/themes/wstheme/downloads/videoplayerdownload.zip

;libraries[bootstrap][download][type] = "get"
;libraries[bootstrap][download][url] = "https://github.com/twbs/bootstrap/archive/v3.0.2.zip"
;libraries[bootstrap][directory_name] = "bootstrap"
;libraries[bootstrap][destination] = "themes/bootstrap"
;libraries[bootstrap][overwrite] = TRUE

; Or an alternative, extended syntax:

;projects[ctools][version] = 1.3

; Check out the latest version of a project from CVS. Note that when using a
; repository as your project source, you must explictly declare the project
; type so that drush_make knows where to put your project.

;projects[data][type] = module
;projects[data][download][type] = cvs
;projects[data][download][module] = contributions/modules/data
;projects[data][download][revision] = DRUPAL-6--1

; Clone a project from github.

;projects[tao][type] = theme
;projects[tao][download][type] = git
;projects[tao][download][url] = git://github.com/developmentseed/tao.git

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.

;projects[admin_menu][subdir] = custom

; To apply a patch to a project, use the `patch` attribute and pass in the URL
; of the patch.

;projects[admin_menu][patch][] = "http://drupal.org/files/issues/admin_menu.long_.31.patch"
