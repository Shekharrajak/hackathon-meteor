### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: Julien Le Coupanec, Anthony Peron
------------------------------------------------------------------------------------------------------------------------ ###


### Server > SMTP
------------------------------------------------------------------------------------------------------------------------ ###


Meteor.startup ->
    smtp =
        username: ''  # eg: server@gentlenode.com
        password: ''  # eg: UWefeziohferv3WnmP1k5
        server:   ''  # eg: mail.gandi.net
        port: 587

    process.env.MAIL_URL = 'smtp://' + encodeURIComponent(smtp.username) + ':' + encodeURIComponent(smtp.password) + '@' + encodeURIComponent(smtp.server) + ':' + smtp.port;

