��          �      �        !   	  !   +  #   M     q  ,   �     �     �  >   �  D        b  %   k  #   �     �  $   �  "   �        ,     ,   >  %   k     �  c  �       �    9   �	  .   
  -   6
     d
  7   �
  #   �
     �
  Q   �
  a   7     �  6   �  ,   �       -   	  0   7     h  7   ~  2   �  1   �       V  8     �                               	                                             
                            %s: Argument expected after `%s'
 %s: Invalid --process value `%s'
 %s: Invalid process specifier `%s'
 %s: Subject not specified
 %s: Two arguments expected after `--detail'
 %s: Unexpected argument `%s'
 ACTION Authentication is needed to run `$(program)' as the super user Authentication is needed to run `$(program)' as user $(user.display) BUS_NAME Close FD when the agent is registered Don't replace existing agent if any FD Only output information about ACTION Output detailed action information PID[,START_TIME] Register the agent for the owner of BUS_NAME Register the agent for the specified process Report bugs to: %s
%s home page: <%s> Show version Usage:
  pkcheck [OPTION...]

Help Options:
  -h, --help                         Show help options

Application Options:
  -a, --action-id=ACTION             Check authorization to perform ACTION
  -u, --allow-user-interaction       Interact with the user if necessary
  -d, --details=KEY VALUE            Add (KEY, VALUE) to information about the action
  --enable-internal-agent            Use an internal authentication agent if necessary
  --list-temp                        List temporary authorizations for current session
  -p, --process=PID[,START_TIME,UID] Check authorization of specified process
  --revoke-temp                      Revoke all temporary authorizations for current session
  -s, --system-bus-name=BUS_NAME     Check authorization of owner of BUS_NAME
  --version                          Show version

Report bugs to: %s
%s home page: <%s>
 [--action-id ACTION] Project-Id-Version: polkit
Report-Msgid-Bugs-To: http://lists.freedesktop.org/mailman/listinfo/polkit-devel
PO-Revision-Date: 2021-03-18 01:19+0100
Last-Translator: Balázs Úr <ur.balazs at fsf dot hu>
Language-Team: Hungarian <gnome-hu-list at gnome dot org>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 19.12.3
Plural-Forms: nplurals=2; plural=(n != 1);
 %s: argumentum szükséges a következő után: „%s”
 %s: Érvénytelen --process érték: „%s”
 %s: Érvénytelen folyamatmegadás: „%s”
 %s: Nincs megadva az alany
 %s: Két argumentum szükséges a „--detail” után
 %s: váratlan argumentum: „%s”
 MŰVELET Hitelesítés szükséges a(z) „$(program)” futtatásához rendszergazdaként Hitelesítés szükséges a(z) „$(program)” futtatásához $(user.display) felhasználóként BUSZNÉV Fájlleíró lezárása az ügynök regisztrálásakor Ne cserélje a meglévő ügynököt, ha van FD Csak a MŰVELETRŐL írjon ki információkat Részletes műveletinformációk megjelenítése PID[,INDÍTÁSI_IDŐ] Az ügynök regisztrálása a BUSZNÉV tulajdonosánál Az ügynök regisztrálása a megadott folyamathoz A hibák itt jelenthetők: %s
A %s honlapja: <%s> Verziószám megjelenítése Használat:
  pkcheck [KAPCSOLÓ…]

Súgó kapcsolói:
  -h, --help                         Súgókapcsolók megjelenítése

Alkalmazás kapcsolói:
  -a, --action-id=MŰVELET            A MŰVELET elvégzésére való felhatalmazás
                                       ellenőrzése
  -u, --allow-user-interaction       Felhasználóval való párbeszéd
                                       engedélyezése, ha szükséges
  -d, --details=KULCS ÉRTÉK          A (KULCS, ÉRTÉK) hozzáadása a művelettel
                                       kapcsolatos információkhoz
  --enable-internal-agent            Belső hitelesítési ügynök használata, ha
                                       szükséges
  --list-temp                        Ideiglenes felhatalmazások felsorolása az
                                       aktuális munkamenethez
  -p, --process=PID[,INDÍTÁSI_IDŐ,UID]  A megadott folyamat felhatalmazásának
                                          ellenőrzése
  --revoke-temp                      Minden ideiglenes felhatalmazás visszavonása
 az aktuális munkamenetből
  -s, --system-bus-name=BUSZNÉV      A BUSZNÉV tulajdonosának felhatalmazásának
                                       ellenőrzése
  --version                          Verziószám kiírása

A hibák itt jelenthetők: %s
A %s honlapja: <%s>
 [--action-id MŰVELET] 