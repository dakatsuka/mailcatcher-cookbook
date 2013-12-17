name             'mailcatcher'
maintainer       'Dai Akatsuka'
maintainer_email 'd.akatsuka@gmail.com'
license          'Apache License, Version 2.0'
description      'Installs/Configures mailcatcher'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe           'mailcatcher', 'Install MailCatcher'
recipe           'mailcatcher::php', 'Integrate the MailCatcher to PHP'

depends          'build-essential'
depends          'rbenv'

supports         'ubuntu'
supports         'debian'
supports         'fedora'
supports         'centos'
supports         'redhat'
