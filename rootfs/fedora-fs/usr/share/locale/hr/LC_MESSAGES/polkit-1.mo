��          �      |      �  !   �  !     #   5     Y  ,   t     �     �  >   �  D        J  %   S  #   y     �  $   �  "   �     �  ,   �  %   &     L  c  Y     �  �  �  #   �	  )   �	  '   
     -
  1   H
     z
     �
  A   �
  K   �
  	   /  $   9  +   ^     �  #   �  %   �     �  &   �  3        I  �  [     �                   	                                                   
                           %s: Argument expected after `%s'
 %s: Invalid --process value `%s'
 %s: Invalid process specifier `%s'
 %s: Subject not specified
 %s: Two arguments expected after `--detail'
 %s: Unexpected argument `%s'
 ACTION Authentication is needed to run `$(program)' as the super user Authentication is needed to run `$(program)' as user $(user.display) BUS_NAME Close FD when the agent is registered Don't replace existing agent if any FD Only output information about ACTION Output detailed action information PID[,START_TIME] Register the agent for the specified process Report bugs to: %s
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
 [--action-id ACTION] Project-Id-Version: polkit master
Report-Msgid-Bugs-To: http://lists.freedesktop.org/mailman/listinfo/polkit-devel
PO-Revision-Date: 2017-04-23 19:27+0200
Last-Translator: gogo <trebelnik2@gmail.com>
Language-Team: Croatian <hr@li.org>
Language: hr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Poedit 1.8.7.1
 %s: Očekivani argument nakon `%s'
 %s: Neispravna --process vrijednost `%s'
 %s: Neispravan razvrstač procesa `%s'
 %s: Subjekt nije određen
 %s: Dva argumenta su očekivana nakon `--detail'
 %s: Neočekivani argument '%s'
 RADNJA Potrebna je ovjera za pokretanje `$(program)' kao super korisnika Potrebna je ovjera za pokretanje `$(program)' kao korisnika $(user.display) BUS_NAZIV Zatvori FD kada je agent registriran Ne zamjenjuj postojećeg agenta ako postoji FD Samo izlazne informacije o RADNJAMA Opširnije izlazne informacije radnje PID[,POČETNO_VRIJEME] Registriraj agenta za određeni proces Prijavite greške na: %s
%s početna stranica: <%s> Prikaži inačicu Upotreba:
  pkcheck [MOGUĆNOST...]

Mogućnosti pomoći:
  -h, --help                         Prikaži mogućnosti pomoći

Mogućnosti aplikacije:
  -a, --action-id=RADNJA             Provjeri ovjeru za pokretanje RADNJE
  -u, --allow-user-interaction       Djeluj s korisnikom ako je  potrebno
  -d, --details=KLJUČ VRIJEDNOST            Dodaj (KLJUČ, VRIJEDNOST) u informaciju o radnji
  --enable-internal-agent            Koristi unutrašnjeg agenta ovjere ako je potrebno
  --list-temp                        Prikaži privremena ovlaštenja za trenutnu sesiju
  -p, --process=PID[,POČETNO_VRIJEME,UID] Provjeri ovlaštenja za određeni proces
  --revoke-temp                      Opozovi sva privremena ovlaštenja za trenutnu sesiju
  -s, --system-bus-name=BUS_NAZIV     Provjeri ovlaštenja vlasnika od BUS_NAZIVA
  --version                          Prikaži inačicu

Prijavi greške na: %s
%s početna stranica: <%s>
 [--action-id RADNJA] 