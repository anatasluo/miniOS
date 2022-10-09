��          �      �        !   	  !   +  #   M     q  ,   �     �     �  >   �  D        b  %   k  #   �     �  $   �  "   �        ,     ,   >  %   k     �  c  �       �    $   �	  *   �	  -   
     @
  +   ]
      �
     �
  G   �
  S   �
     M  -   V  "   �     �  ,   �  +   �       1     -   H  -   v     �  �  �     �                               	                                             
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
 [--action-id ACTION] Project-Id-Version: polkit master
Report-Msgid-Bugs-To: http://lists.freedesktop.org/mailman/listinfo/polkit-devel
PO-Revision-Date: 2018-09-11 11:51+0200
Last-Translator: Milo Casagrande <milo@milo.name>
Language-Team: Italian <gnome-it-list@gnome.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 2.1.1
 %s: atteso un argomento dopo «%s»
 %s: valore «%s» di --process non valido
 %s: indicatore di processo «%s» non valido
 %s: oggetto non specificato
 %s: attesi due argomenti dopo «--detail»
 %s: argomento «%s» non atteso
 AZIONE È richiesto autenticarsi per lanciare «$(program)» come super utente È richiesto autenticarsi per lanciare «$(program)» come l'utente $(user.display) NOME_BUS Chiude il FD quando l'agente viene registrato Non sostituisce l'agente esistente FD Stampa informazioni solo riguardo all'AZIONE Stampa informazioni dettagliate dell'azione PID[,TEMPO_INIZIO] Registra l'agente per il proprietario di NOME_BUS Registra l'agente per il processo specificato Segnalare problemi a: %s
Sito web di %s: <%s> Mostra la versione Uso:
  pkcheck [OPZIONE...]

Opzioni d'aiuto:
  -h, --help                         Mostra opzioni di aiuto

Opzioni dell'applicazione:
  -a, --action-id=AZIONE             Controlla l'autorizzazione per eseguire
                                     AZIONE
  -u, --allow-user-interaction       Interagisce con l'utente, se necessario
  -d, --details=CHIAVE VALORE        Aggiunge (CHIAVE, VALORE) alle informazioni
                                     riguardo all'azione
  --enable-internal-agent            Usa un agente di autenticazione interna,
                                     se necessario
  --list-temp                        Elenca autorizzazione temporane per la
                                     sessione corrente
  -p, --process=PID[,START_TIME,UID] Controlla l'autorizzazione del processo
                                     specificato
  --revoke-temp                      Revoca tutte le autorizzazione temporane
                                     per la sessione corrente
  -s, --system-bus-name=NOME_BUS     Controlla l'autorizzazione per il
                                     proprietario di NOME_BUS
  --version                          Mostra la versione

Segnalare problemi a: %s
Sito web di %s: <%s>
 [--action-id AZIONE] 