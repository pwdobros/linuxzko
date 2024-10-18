# Komenda `head` w systemie Linux

Komenda `head` w systemie Linux służy do wyświetlania kilku pierwszych linijek pliku tekstowego.
Pozwala ona w szybkim tempie podejrzeć zawartość pliku bez konieczności otwierania go w całości.

## Zastosowanie
Główne zastosowania komendy `head` to:

- Szybkie sprawdzenie zawartości pliku
- Uzyskiwanie podglądów dużych plików bez ich pełnego przetwarzania

## Składnia
```bash
head [opcje] [plik]
```

## Opcje
- -n **NUM**
>Wyświetla pierwsze **NUM** linii pliku.\
>Jeśli chcemy wyświetlić zawartość pliku, bez ostatnich kilku wierszy, to do liczby **NUM** po opcji -n dodajemy minus.

- -c **NUM**
>Wyświetla pierwsze **NUM** bajtów pliku.\
>Jeśli chcemy wyświetlić zawartość pliku, bez ostatnich kilku bajtów, to do liczby **NUM** po opcji -n dodajemy minus.

- -q
>Nie wyświetla nagłówków plików

- -v Zawsze wyświetla nagłowki plików

## Przykłady

1. **Wyświetlanie pierwszych 10 linijek tekstu**
```bash
head nazwa_pliku.txt
```

2. **Wyświetlanie pierwszych 5 linijek tekstu**
```bash
head -n 5 nazwa_pliku.txt
```

3. **Wyświetlanie pierwszych 20 bajtów pliku**
```bash
head -c 20 nazwa_pliku.txt
```

4. **Wyświetlenie linijek z kilku plików jednocześnie**
```bash
head plik1.txt plik2.txt
```
   


