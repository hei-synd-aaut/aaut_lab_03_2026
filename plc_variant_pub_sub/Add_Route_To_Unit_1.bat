
:: Nom du fichier : Add_Route.bat

:: Description :
:: *********** 
:: Ce fichier permet de créer des routes
:: dans la table de routage du PC central
:: afin que celui-ci puisse accéder aux appareils
:: du laboratoire d'automatisation.

:: Remarque :
:: ********
:: Il faut brancher l'interface
:: Ethernet du PC central au réseau ethernet
:: avant d'exécuter ce fichier.
::
:: Pour vérifier si les routes ont été correctement créés,
:: taper la commande "route print" dans l'invite de commande.

::
:: Justification :
:: *************
:: Le PC central est dans le sous-réseau 192.168.10.x
:: alors que les appareils du laboratoire d'automatisation
:: sont accessibles via le sous-réseau virtuel 172.16.x.y.
:: x : numéro de la cellule où se trouve l'appareil
:: y : numéro de l'appareil
:: Le sous-réseau virtuel 172.16.x.y est configuré dans
:: le NAT des routeurs de chaque cellule.

:: Auteur  : Christophe Truffer
:: Date    : 24 septembre 2024
:: Version : 1.0



@echo off
:: Variables pour les routes
set destination1=172.16.1.0
:: set destination2=172.16.2.0
:: set destination3=172.16.3.0
:: set destination4=172.16.4.0
:: set destination5=172.16.5.0
:: set destination6=172.16.6.0
:: set destination7=172.16.7.0
:: set destination8=172.16.8.0
:: set destination9=172.16.9.0
:: set destination10=172.16.10.0



set gateway1=192.168.10.1
:: set gateway2=192.168.10.2
:: set gateway3=192.168.10.3
:: set gateway4=192.168.10.4
:: set gateway5=192.168.10.5
:: set gateway6=192.168.10.6
:: set gateway7=192.168.10.7
:: set gateway8=192.168.10.8
:: set gateway9=192.168.10.9
:: set gateway10=192.168.10.10



set mask=255.255.255.0

:: Ajout des routes pour les 10 routeurs
route add %destination1% mask %mask% %gateway1%
:: route add %destination2% mask %mask% %gateway2%
:: route add %destination3% mask %mask% %gateway3%
:: route add %destination4% mask %mask% %gateway4%
:: route add %destination5% mask %mask% %gateway5%
:: route add %destination6% mask %mask% %gateway6%
:: route add %destination7% mask %mask% %gateway7%
:: route add %destination8% mask %mask% %gateway8%
:: route add %destination9% mask %mask% %gateway9%
:: route add %destination10% mask %mask% %gateway10%


:: Message de confirmation
echo Routes ajoutées avec succès
pause
