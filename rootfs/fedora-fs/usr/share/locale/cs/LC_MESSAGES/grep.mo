��    i      d  �   �       	  �   	  �   �	  �  �
    �  �   �  �  �  U  d  �  �  �  v  F       b     v  &   �  #   �     �  !   �          4     P  ,   e     �  .   �  '   �  (   	     2  %   R     x     z     ~  *   �  �   �  &   K     r     �     �     �  $   �     �       �   ,     �     �     �             <   5  #   r     �     �     �  "   �     �       &        A     V     h     z     �  )   �     �  �   �     �  ;   �  3   2  /   f  +   �  '   �  #   �          .     J  \   Z     �     �  4   �        !   *   0   L   -   }   .   �      �   $   �      !     6!     N!     f!     �!     �!     �!     �!     �!     �!     �!  ,   "  *   5"     `"     m"     z"     �"     �"     �"  -   �"     �"  �  #  �   �$  �   �%  �  �&  \  )    d*  `  p+  �  �-  i  �/    '2  �  /4  %   �5     6  1   $6  4   V6  +   �6  )   �6     �6  (   �6     '7  ;   ?7  /   {7  :   �7  .   �7  1   8  )   G8  ,   q8     �8     �8     �8  >   �8  �   �8  3   �9     �9     �9     �9     :  (   ":     K:     c:  �   �:     <;     P;  '   _;     �;     �;  d   �;  (   <  &   @<  ;   g<  �   �<  $   +=     P=     Y=  7   y=     �=     �=     �=      �=     >  2   &>     Y>  m  q>     �?  9   �?  0   .@  ,   _@  (   �@  $   �@      �@     �@     A     1A  Y   @A     �A  !   �A  2   �A     �A  ,   B  /   <B  9   lB  E   �B  <   �B  .   )C     XC     tC     �C  "   �C     �C     �C     �C     D     (D  &   7D     ^D  8   wD  /   �D     �D     �D      E     E  !   /E  $   QE  9   vE     �E                8       @   +   ,   J       6              `           R      Y      I   e   :              ;      D   [       a   ^   L          =                 g            <           #          .   
           G          	          &           S   c          B   0   i   (   4   3   5          -   \   h       H      /      X       Z   M          )   b      K       C   O       "   9       A          V       2       $   P          W      U   1   %   Q   !   ]   ?               T   >       E      *      _       f       F         7       '   N               d    
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             display version information and exit
      --help                display this help text and exit
 
Output control:
  -m, --max-count=NUM       stop after NUM selected lines
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print file name with output lines
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
       --include=GLOB        search only files that match GLOB (a file pattern)
      --exclude=GLOB        skip files that match GLOB
      --exclude-from=FILE   skip files that match any file pattern from FILE
      --exclude-dir=GLOB    skip directories that match GLOB
   -E, --extended-regexp     PATTERNS are extended regular expressions
  -F, --fixed-strings       PATTERNS are strings
  -G, --basic-regexp        PATTERNS are basic regular expressions
  -P, --perl-regexp         PATTERNS are Perl regular expressions
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
   -L, --files-without-match  print only names of FILEs with no selected lines
  -l, --files-with-matches  print only names of FILEs with selected lines
  -c, --count               print only a count of selected lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --group-separator=SEP  print SEP on line between matches with context
      --no-group-separator  do not print separator for matches with context
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is 'always', 'never', or 'auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS/Windows)

   -e, --regexp=PATTERNS     use PATTERNS for matching
  -f, --file=FILE           take PATTERNS from FILE
  -i, --ignore-case         ignore case distinctions in patterns and data
      --no-ignore-case      do not ignore case distinctions (default)
  -w, --word-regexp         match only whole words
  -x, --line-regexp         match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only nonempty parts of lines that match
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
 %s home page: <%s>
 %s: binary file matches %s: exceeded PCRE's backtracking limit %s: exceeded PCRE's recursion limit %s: exhausted PCRE JIT stack %s: input file is also the output %s: internal PCRE error: %d %s: invalid option -- '%c'
 %s: memory exhausted %s: option '%s%s' doesn't allow an argument
 %s: option '%s%s' is ambiguous
 %s: option '%s%s' is ambiguous; possibilities: %s: option '%s%s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%s%s'
 %s: warning: recursive directory loop ' (C) (standard input) -P supports only unibyte and UTF-8 locales Example: %s -i 'hello world' menu.h main.c
PATTERNS can contain multiple patterns separated by newlines.

Pattern selection and interpretation:
 General help using GNU software: <%s>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression License GPLv3+: GNU GPL version 3 or later <%s>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Memory exhausted No match No previous regular expression Packaged by %s
 Packaged by %s (%s)
 Perl matching not supported in a --disable-perl-regexp build Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Report bugs to: %s
 Search for PATTERNS in each FILE.
 Success Trailing backslash Try '%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [, [^, [:, [., or [= Unmatched \{ Usage: %s [OPTION]... PATTERNS [FILE]...
 Valid arguments are: When FILE is '-', read standard input.  With no FILE, read '.' if
recursive, '-' otherwise.  With fewer than two FILEs, assume -h.
Exit status is 0 if any line is selected, 1 otherwise;
if any error occurs and -q is not given, the exit status is 2.
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 Written by Mike Haertel and others; see
<https://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS>. ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's line length limit failed to allocate memory for the PCRE JIT stack failed to return to initial working directory failed to set file descriptor text/binary mode input is too large to count internal error (should never happen) invalid argument %s for %s invalid character class invalid content of \{\} invalid context length argument invalid matcher %s invalid max count memory exhausted no syntax specified program error regular expression too big stack overflow the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method warning: --unix-byte-offsets (-u) is obsolete write error Project-Id-Version: grep 3.6.27
Report-Msgid-Bugs-To: bug-grep@gnu.org
PO-Revision-Date: 2021-08-09 20:10+02:00
Last-Translator: Petr Pisar <petr.pisar@atlas.cz>
Language-Team: Czech <translation-team-cs@lists.sourceforge.net>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
 
Řízení kontextu:
  -B, --before-context=POČET vypíše POČET řádků před shodou
  -A, --after-context=POČET  vypíše POČET řádků za shodou
  -C, --context=POČET        vypíše POČET řádků kontextu (před i za shodou)
 
Různé:
  -s, --no-messages         potlačí chybové zprávy
  -v, --invert-match        vybere neodpovídající řádky
  -V, --version             vypíše označení verze a skončí
      --help                vypíše tuto nápovědu a skončí
 
Řízení výstupu:
  -m, --max-count=POČET     skončí po vybrání POČTU řádků
  -b, --byte-offset         s každým výstupním řádkem vypíše jeho pozici
                            v souboru
  -n, --line-number         s každým výstupním řádkem vypíše jeho číslo řádku
      --line-buffered       vyprázdní výstup po každém řádku
  -H, --with-filename       u výstupních řádků vypisuje název souboru
  -h, --no-filename         potlačí předřazování jména souboru na výstupu
      --label=NÁZEV         použije NÁZEV jako označení standardního
                            vstupu na výstupu
       --include=GLOB        prohledá pouze soubory, které vyhovují GLOBU
      --exclude=GLOB        přeskočí soubory, které vyhovují GLOBU
      --exclude-from=SOUBOR přeskočí soubory, které vyhovují jakémukoliv vzorku
                            ze SOUBORU
      --exclude-dir=GLOB    přeskočí adresáře, které vyhovují GLOBU
   -E, --extended-regexp     VZORKY jsou rozšířené regulární výrazy
  -F, --fixed-strings       VZORKY jsou řetězce
  -G, --basic-regexp        VZORKY jsou základní regulární výrazy
  -P, --perl-regexp         VZORKY jsou regulární výrazy jazyka Perl
   -I                        jako --binary-files=without-match
  -d, --directories=AKCE    jak zpracovávat adresáře. AKCE může být:
                            „read“ (číst), „recurse“ (rekurze),
                            „skip“ (přeskočit)
  -D, --devices=AKCE        jak zpracovávat zařízení, FIFO (roury) a sockety,
                            AKCE může být: „read“ (číst) nebo „skip“ (přeskočit)
  -r, --recursive           jako --directories=recurse
  -R, --dereference-recursive
                            obdobně, jen následuje všechny symbolické odkazy
   -L, --files-without-match vypíše pouze názvy souborů, ze kterých nebyly
                            vybrány žádné řádky
  -l, --files-with-matches  vypíše pouze názvy souborů, ze kterých byly vybrány
                            řádky
  -c, --count               vypíše pouze počet vyhovujících řádků na SOUBOR
  -T, --initial-tab         zarovná začátky řádků tabulátory (je-li třeba)
  -Z, --null                vypíše nulový bajt za jménem SOUBORU
   -POČET                     stejné jako --context=POČET
      --group-separator=ODDĚLOVAČ
                             vypisuje ODDĚLOVAČ na řádku mezi shodami
                             s kontextem
      --no-group-separator   nevypisuje oddělovač shod s kontextem
      --color[=KDY],
      --colour[=KDY]         použije barev k rozlišení vyhovujících řetězců,
                             KDY může být „always“ (vždy), „never“ (nikdy)
                             nebo „auto“ (automaticky)
  -U, --binary               neodstraňuje znak CR na konci řádku (MSDOS/Windows)
   -e, --regexp=VZORKY       použije VZORKY jako regulární výraz
  -f, --file=SOUBOR         načte VZORKY ze SOUBORU
  -i, --ignore-case         ignoruje rozdíly ve velikosti písmen ve vzorcích
                            a datech
      --no-ignore-case      neignoruje rozdíly ve velikosti písmen (výchozí)
  -w, --word-regexp         hledá pouze na celá slova
  -x, --line-regexp         hledá pouze celé řádky
  -z, --null-data           řádek končí nulovým bajtem místo znaku nového řádku
   -o, --only-matching       zobrazí pouze neprázdné části odpovídajících řádků
  -q, --quiet, --silent     potlačí obvyklý výstup
      --binary-files=TYP    definuje typ binárních souborů
                            TYP může být: „binary“ (binární), „text“ (textový)
                            nebo „without-match“ (bez vyhovění vzorku)
  -a, --text                jako --binary-files=text
 Domovská stránka programu %s: <%s>
 %s: binární soubor odpovídá %s: překročeno omezení PCRE na délku návratu %s: překročeno omezení PCRE na hloubku zanoření %s: JIT zásobník knihovny PCRE vyčerpán %s: vstupní soubor je rovněž výstupem %s: vnitřní chyba PCRE: %d %s: neznámý přepínač – „%c“
 %s: paměť vyčerpána %s: přepínač „%s%s“ musí být zadán bez argumentu
 %s: přepínač „%s%s“ není jednoznačný
 %s: přepínač „%s%s“ není jednoznačný: možnosti: %s: přepínač „%s%s“ vyžaduje argument
 %s: přepínač vyžaduje argument – „%c“
 %s: nerozpoznaný přepínač „%s%s“
 %s: pozor: smyčka rekurzivních adresářů “ © (standardní vstup) -P podporuje pouze jednobajtová a UTF-8 národní prostředí Příklad: %s -i 'hello world' menu.h main.c
VZORKY smí obsahovat více vzorků oddělených novým řádkem.

Výběr a interpretace vzorku:
 Obecná pomoc s používáním GNU softwaru: <%s>
 Neplatný zpětný odkaz Neplatný název třídy znaků Neplatný řadicí znak Neplatný obsah \{\} Neplatný předchozí regulární výraz Neplatný konec rozsahu Neplatný regulární výraz Licence GPLv3+: GNU GPL verze 3 nebo novější
<%s>.
Toto je volné programové vybavení: máte právo jej měnit a dále šířit.
Není zde ŽÁDNÁ ZÁRUKA, jak jen zákon dovoluje.
 Paměť vyčerpána Žádná shoda Žádný předchozí regulární výraz Zabaleno kým: %s
 Zabaleno kým: %s (%s)
 V programu přeloženém s přepínačem --disable-perl-regexp nejsou perlové výrazy podporovány Předčasný konec regulárního výrazu Regulární výraz je příliš velký Chyby distributora %s oznamujte (anglicky) na adresu: <%s>
 Chyby v programu oznamujte (anglicky) na adresu: <%s>
Připomínky k překladu na adresu: <translation-team-cs@lists.sourceforge.net>
 Každý SOUBOR prohledá na VZORKY.
 Úspěch Závěrečné koncové lomítko Více informací získáte příkazem „%s --help“.
 Neznámá systémová chyba Nepárový ( nebo \( Nepárový ) nebo \) Nepárový [, [^, [:, [. nebo [= Nepárový \{ Použití: %s [PŘEPÍNAČ]… VZORKY [SOUBOR]…
 Platné argumenty jsou: Je-li SOUBOR -, čte standardní vstup. Ne-li SOUBOR zadán, čte „.“,
je-li přítomen přepínač -r, jinak čte standardní vstup. Jestliže jsou
zadány méně než dva SOUBORY, pak je výchozí přepínač -h.
Návratový kód je 0 při nalezení vyhovujícího řádku, jinak 1.
Vyskytne-li se chyba a není-li zadán přepínač -q, bude vrácen kód 2.
 Napsali(y) %s a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s,
%s, %s a další.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s,
%s a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s
a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s a %s.
 Napsali(y) %s, %s, %s,
%s, %s a %s.
 Napsali(y) %s, %s, %s,
%s a %s.
 Napsali(y) %s, %s, %s
a %s.
 Napsali(y) %s, %s a %s.
 Napsal(a) %s.
 Napsal Mike Haertel a další, vizte
<https://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS>. „ nejednoznačný argument %s u %s zápis třídy znaků je [[:space:]], ne [:space:] zadány kolidující vzorky překročeno omezení PCRE na délku řádku alokace paměti pro JIT zásobník PCRE selhala návrat do prvotního pracovního adresáře se nezdařil nastavení textového/binárního režimu deskriptoru souboru selhalo počet vstupních řádků nelze spočítat (je jich hodně) vnitřní chyba (to by se nikdy nemělo stát) neplatný argument %s u %s neplatný třída znaků neplatný obsah \{\} neplatný argument délky kontextu neplatný syntaxe vzorku %s neplatný maximální počet paměť vyčerpána syntaxe není určena chyba programu regulární výraz je příliš velký přetečení zásobníku přepínač -P lze být použít pouze s jedním vzorkem nelze zaznamenat aktuální pracovní adresář nevyvážená ( nevyvážená ) nevyvážená [ neukončená escape sekvence \ neznámý typ binárního souboru neznámá metoda obsluhy zařízení pozor: přepínač --unix-byte-offsets (-u) je zastaralý chyba při zápisu 