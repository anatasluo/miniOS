��          �      �        !   	  !   +  #   M     q  ,   �     �     �  >   �  D        b  %   k  #   �     �  $   �  "   �        ,     ,   >  %   k     �  c  �           I   &
  <   p
  K   �
  (   �
  W   "  5   z     �  �   �  �   @     �  c   �  M   K     �  7   �  8   �       U   +  N   �  t   �  /   E    u     y                               	                                             
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
PO-Revision-Date: 2020-04-02 13:05+0300
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <trans-uk@lists.fedoraproject.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Lokalize 20.07.70
 %s: після «%s» мало бути вказано аргумент'
 %s: некоректне значення --process, «%s»
 %s: некоректний специфікатор процесу, «%s»
 %s: не вказано суб’єкт
 %s: після «--detail» мало бути вказано два аргументи
 %s: неочікуваний аргумент «%s»
 ДІЯ Для запуску «$(program)» від імені суперкористувача слід пройти розпізнавання Для запуску «$(program)» від імені користувача $(user.display) слід пройти розпізнавання НАЗВА_КАНАЛУ Закрити дескриптор файла, якщо агент не зареєстровано Не змінювати наявного агента, якщо такий є ДФ Вивести дані лише щодо дії ДІЯ Вивести докладні дані щодо дії PID[,ЧАС_ЗАПУСКУ] Зареєструвати агент для власника НАЗВА_КАНАЛУ Зареєструвати агент для вказаного процесу Про вади повідомляйте за такою адресою: %s
Домашня сторінка %s: <%s> Показати дані щодо версії Користування:
  pkcheck [ПАРАМЕТР...]

Параметри довідки:
  -h, --help                         Вивести довідку щодо параметрів

Параметри програми:
  -a, --action-id=ДІЯ                Перевірити уповноваження щодо виконання дії ДІЯ
  -u, --allow-user-interaction       Взаємодіяти із користувачем, якщо потрібно
  -d, --details=КЛЮЧ ЗНАЧЕННЯ        Додати пару (КЛЮЧ, ЗНАЧЕННЯ) до інформації щодо дії
  --enable-internal-agent            Використати вбудований агент розпізнавання, якщо потрібно
  --list-temp                        Вивести список тимчасових уповноважень для поточного сеансу
  -p, --process=PID[,ЧАС_ЗАПУСКУ,UID] Перевірити уповноваження для вказаного процесу
  --revoke-temp                      Відкликати усі тимчасові уповноваження для поточного сеансу
  -s, --system-bus-name=НАЗВА_КАНАЛУ Перевірити уповноваження власника НАЗВА_КАНАЛУ
  --version                          Вивести дані щодо версії

Про вади повідомляйте за такою адресою: %s
Домашня сторінка %s: <%s>
 [--action-id ДІЯ] 