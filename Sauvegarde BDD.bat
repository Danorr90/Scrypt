rem chemin du fichier mysql.exe
cd C:\Program Files\MySQL\MySQL Server 8.0\bin

rem commande de dump de base de donnee
mysqldump -uUserName -ppassword --databases database_name > "\\chemin du fichier de sauvegarde\monfichier.sql"

Echo compression du fichier....
rem on selectionne l'apk qui va compresser le fichier on nomme le répertoire de destination et enfin le fichier a ciblé.
"C:\Program Files\7-Zip\7z.exe" a -tzip "\\chemin du fichier de sauvegarde zip\monficher.zip" "\\chemin du fichier de sauvegarde\monfichier.sql"

rem on supprime le fichier SQL non compresse
del "\\chemin du fichier de sauvegarde\monfichier.sql"


rem	 	 ________
rem		 \______ \ _____    ____   ___________
rem		  |    |  \\__  \  /    \ /  _ \_  __ \
rem		  |    `   \/ __ \|   |  (  <_> )  | \/
rem		 /_______  (____  /___|  /\____/|__|
rem                 		 \/     \/     \/
rem
rem	                     .^. .  _
rem	                    /: ||`\/ \~  ,
rem	                , [   &    / \ y'
rem	                {v':   `\   / `&~-,
rem	                'y. '    |`   .  ' /
rem	                \   '  .       , y
rem	                v .        '     v
rem	                V  .~.      .~.  V
rem	                : (  0)    (  0) :
rem	                 i `'`      `'` j
rem	                  i     __    ,j
rem	                   `%`~....~'&
rem	                <~o' /  \/` \-s,
rem	                 o.~'.  )(  r  .o ,.
rem	                o',  %``\/``& : 'bF
rem	               d', ,ri.~~-~.ri , +h
rem	               `oso' d`~..~`b 'sos`
rem	                    d`+ II +`b
rem	                    i_:_yi_;_y
