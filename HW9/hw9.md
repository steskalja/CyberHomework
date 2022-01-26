# Week 9 homework submission

Mission 1

1.  Starwars.com Mail Server

    a.  starwars.com MX preference = 10, mail exchanger =
        aspmx2.googlemail.com

    b.  starwars.com MX preference = 1, mail exchanger =
        aspmx.l.google.com

    c.  starwars.com MX preference = 5, mail exchanger =
        alt1.aspx.l.google.com

    d.  starwars.com MX preference = 10, mail exchanger =
        aspmx3.googlemail.com

    e.  starwars.com MX preference = 5, mail exchanger =
        alt2.aspmx.l.google.com

2.  The issue is that the mail server records are pointing to the wrong
    servers and the preference waiting it wrong

3.  To fix it is should look like this

    a.  starwars.com MX preference = 1, mail exchanger =
        asltx.l.google.com

    b.  starwars.com MX preference = 5, mail exchanger =
        asltx.2.google.com

Mission 2

1.  The SPF record for theforce.net:

    a.  theforce.net text =

> \"v=spf1 a mx mx:smtp.secureserver.net include:aspmx.googlemail.com
> ip4:104.156.250.80 ip4:45.63.15.159 ip4:45.63.4.215\"
>
> theforce.net text =
>
> \"google-site-verification=XTU_We07Cux-6WCSOItl0c_WS29hzo92jPE341ckbOQ\"
>
> theforce.net text =
>
> \"google-site-verification=ycgY7mtk2oUZMagcffhFL_Qaf8Lc9tMRkZZSuig0d6w\"

2.  The reason the emails are going to spam is because their mail server
    is not an authorized address to send through smtp.secureserver.net

3.  A correct SPF record would be

    a.  theforce.net text =

> \"v=spf1 a mx mx:smtp.secureserver.net include:aspmx.googlemail.com
> ip4:104.156.250.80 ip4:45.63.15.159 ip4:45.23.176.21\"

Mission 3

1.  [www.theforce.net](http://www.theforce.net) cname points to
    theforce.net

2.  Resistance.theforce.net is not redirecting to theforce.net because
    there is no cname

3.  A proper record would be resistance.theforce.net canonical name =
    theforce.net

Mission 4

1.  The site's ns records are the following:

    a.  princessleia.site nameserver = ns26.domaincontrol.com

    b.  princessleia.site nameserver = ns25.domaincontrol.com

2.  To fix the problem the ns records need to be updated to
    ns2.galaxybackup.com

Mission 5

1.  Route from Batu to Jedda

    a.  Batu,(2)D,(1)C,(1)E,(1)F,(5)G,(5)O,(1)R,(8)S,(8)Jedda

Mission 6

1.  Mac Address: 00:13:ce:55:98:ef

2.  IP Address: 172.16.0.101

Mission 7

1.  Screenshot:

![Calendar Description automatically
generated](media/image1.png){width="7.5in"
height="2.4944444444444445in"}
