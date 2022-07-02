1. Napisz skrypt, który pozwala użytkownikowi utworzyć, usunąć, skopiować, przenieść plik/folder oraz utworzyć foldery podane w ścieżce. 
Stwórz dwie wersje tego skryptu:
- z wykorzystaniem parametrów
- z wykorzystaniem menu

---

2. Wykorzystując strumienie zapisz do pliku informacje o procesorze, jądrze, nazwę aktualnie zalogowanego użytkownika oraz katalog domowy użytkownika.

---

3. Napisz skrypt w pliku o nazwie info.sh, który będzie wyświetlał informacje o działającym systemie. Program ma mieć następującą funkcjonalność:
- wyświetlanie informacji o wolnej przestrzeni dyskowej;
- wyświetlanie informacji o wolnej pamięci ram;
- wyświetlanie informacji o procesorach zainstalowanych w jednostce głównej;
- wyświetlenie wszystkich powyższych.  

Wybrane informacje mają być wyświetlane tylko przy odpowiednio użytych parametrach skryptu, odpowiednio:
- –hd
- –ram
- –cpu
- –all

---

4. Napisz skrypt, który:
- wykonuje nieskończoną pętlę,
- czynności wewnątrz pętli wykonują się co 1 sekundę (komenda sleep 1),
- przed rozpoczęciem pętli identyfikator procesu zapisywany jest do pliku endlessScript.pid.

Następnie napisz drugi skrypt, który z pliku endlessScript.pid odczytuje identyfikator procesu wykonującego nieskończoną pętlę i go zabija (polecenie kill).

---

5. Napisz funkcję zamień, która obrabia tekst w następujący sposób:
- przyjmuje 2 argumenty - pierwszy określa wyszukiwane słowo, a drugie słowo, na które wyszukane słowo ma być zamienione
- obrabiany tekst pobierany jest ze strumienia wejścia
- obrobiony tekst trafia do strumienia wyjścia.
