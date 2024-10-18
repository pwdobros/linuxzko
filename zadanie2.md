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


