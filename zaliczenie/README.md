Zaliczenie z przedmiotu "System Linux od podszewki"
III rok informatyki, rok akademicki 2021/2022

Waszym zadaniem jest praca nad zmodyfikowaną dystrybucją Slax. W
dostarczonej formie nie jest możliwe jej uruchomienie, więc początkowym
etapem Waszej pracy jest naprawa konfiguracji. Dalszym etapem będzie
modyfikacja już działającego systemu zgodnie z poleceniami.

Czym jest Slax?
---------------

Slax jest dystrybucją Linuksa typu live. Autor dystrybucji do wersji 7
bazował na pakietach Slackware. Od wersji 9 (wersji 8 nie było) zaczął
używać Debiana. Slax posiada mechanizm aktywacji i deaktywacji pakietów
podczas pracy systemu, więc można go uzupełniać o nowe oprogramowanie
bez konieczności wprowadzania ręcznie zmian na nośniku. W standardowej
konfiguracji wszelkie zmiany w systemie zaistniałe podczas pracy są
zapisywane na pendrive'ie i odtwarzane podczas kolejnego
bootowania. Mechanizm ten nazwany jest "persistent changes".

Wymagania
---------

Aby móc wykonać zadanie, będziecie potrzebowali działającej dystrybucji
Linuksa i uprawnień administratora. Konieczne jest również posiadanie
pendrive'a z około 500 MB wolnego miejsca.

Zadanie
-------

1. Pobrać plik slax-2022.tgz ze strony
   http://kft.umcs.lublin.pl/mgozdz/

2. [Działamy jako root] Należy zamontować pendrive jako root. Pobrany
   plik należy rozpakować do głównego katalogu pendrive'a, a następnie
   przeprowadzić proces instalacji bootloadera na pendrive'ie poprzez
   uruchomienie skryptu slax/boot/bootinst.sh

3. Spróbujcie zbootować komputer z właśnie utworzonego pendrive'a. Jeśli
   pojawi się ekran bootloadera z koniczynką, to jak na razie wszystko
   wykonaliście poprawnie. Jeśli nie, trzeba poprawnie wykonać punkt 2.

4. Dystrybucja się nie bootuje. Od tego momentu musicie szukać błędów
   wprowadzonych na pendrive'ie i w samym systemie.

Zad.1
Dystrybucja bootuje się poprawnie.

Zad.2
Można się zalogować w systemie jako root.

Zad.3
Utworzone jest wasze konto użytkownika, możecie się na nie zalogować.

Zad.4
(a) Usunięte zostało systemowe konto guest.
(b) Pobrany został Firefox 91.8.0 ESR w polskiej wersji językowej.
(c) Stworzony został pakiet slax'a w formacie .sb zawierający Firefoksa
    zainstalowanego w katalogu /opt oraz link do pliku wykonywalnego
    firefox w katalogu /usr/bin.

Efektem finalnym jest działająca dystrybucja, w której wszystkie zmiany
są zapisane wewnątrz modułów .sb ładowanych przy starcie. Wasza
dystrybucja nie może wymagać włączonego mechanizmu "persistent changes"!

Forma
-----

Ocenie będzie podlegał raport, opisujący Waszą pracę. W raporcie znaleźć
się powinien szczegółowy opis wszystkich czynności, jakie wykonaliście w
celu uruchomienia systemu. Proszę podać w miarę dokładnie z jakich
pomocy korzystaliście oraz dlaczego wybraliście taką a nie inną
metodę. Nie istnieje jeden sposób doprowadzenia systemu do stanu
używalności, dlatego każdy powinien opisać własną pracę i własny tok
rozumowania. Radzę pisać raport na bieżąco, w miarę postępów pracy, bo
później będzie ciężko wszystko dokładnie spisać.

Jeśli nie będziecie w stanie zrobić któregoś z etapów zadania, napiszcie
w raporcie dokładną analizę sytuacji: objawy, co próbowaliście zrobić,
aby problem rozwiązać, co podejrzewacie, że może nie działać i dlaczego.

Ocena będzie tym wyższa, im więcej uda Wam się osiągnąć. Nisko oceniać
będę bezmyślne zastępowanie całych modułów ich wersjami instalacyjnymi,
bo jest to odpowiednikiem reinstalacji systemu. Pamiętajcie, że Linuksa
można naprawić, a reinstalacja całej dystrybucji z powodu nieprawidłowej
konfiguracji w zasadzie nie powinna mieć miejsca.

Praca wspólna
-------------

Zachęcam Was do pracy w grupie, pod warunkiem, że będzie ona polegała na
wymianie doświadczeń, pomysłów i spostrzeżeń. Uczyć można się od
każdego, ale wszyscy mają naprawić swój system samodzielnie! Pomoc, którą
otrzymacie (książki, dokumentacja, strony www, inni ludzie), powinniście
wymienić w raporcie.

UWAGI:
------

Większość czynności będziecie musieli przeprowadzać jako
root. Zachowajcie szczególną ostrożność, bo nie biorę odpowiedzialności 
za Wasze pomyłki, nawet jeśli skasujecie sobie dane z twardych dysków!

Slax korzysta z systemd. Jest to nowy sposób zarządzania usługami i
startem systemu, nie wykorzystujący starego init'a, poziomów
uruchomieniowych, skryptów SystemV i tak dalej. Jeśli będziecie szukać
informacji, gdzie włączone jest uruchamianie jakiejś usługi, sięgnijcie
po dokumentację i samouczki dla systemd.

Być może użyteczne będą strony:
www.slax.org
ftp.sh.cvut.cz/slax
github.com/Tomas-M/linux-live/tree/master/Slax/debian11/rootcopy/usr/bin

Termin oddawania raportów
-------------------------

Na wasz raport w postaci pliku pdf czekam do 3 lipca 2022. Wyślijcie go
na adres mgozdz@kft.umcs.lublin.pl

Powodzenia!
