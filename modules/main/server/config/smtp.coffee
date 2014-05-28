# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


# Server > SMTP


Meteor.startup ->
  smtp =
    username: '' # eg: server@gentlenode.com
    password: '' # eg: UWefeziohferv3WnmP1k5
    server:   '' # eg: mail.gandi.net
    port: 587

  process.env.MAIL_URL = 'smtp://' +
  encodeURIComponent(smtp.username) + ':' +
  encodeURIComponent(smtp.password) + '@' +
  encodeURIComponent(smtp.server)  + ':' + smtp.port
