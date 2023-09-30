-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 30, 2023 at 09:52 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wypiekarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktualizacje`
--

CREATE TABLE `aktualizacje` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `date` text NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktualizacje`
--

INSERT INTO `aktualizacje` (`id`, `name`, `date`, `description`) VALUES
(1, 'Informację', '2020-12-10', 'Aktualizacja obejmuje dodanie formularzy zamówieniowych, oraz kilku innych opcji dotyczących interface\'u mojego sklepu </br> Pozdrawiam Twórca :-)'),
(2, 'System U/R/L', '2021-02-10', 'Aktualizacja obejmuje rozpoczęcie pracy nad systemem umożliwiającym działania na kontach użytkownika i logowanie </br> Pozdrawiam Twórca :-)'),
(3, 'Podsumowanie', '2021-02-28', 'Aktualizacja obejmuje dodanie skryptu PHP który po wypełnieniu formularza z zamówieniem, podsumowuje zamówienie </br> Pozdrawiam Twórca :-)'),
(4, 'Zaawansowany CSS', '2021-03-14', 'Aktualizacja obejmuje dodanie zaawansowanych akruszy stylów css i pewnych usprawnień </br> Pozdrawiam Twórca :-)'),
(5, 'JS Fantazja', '2021-03-22', 'Aktualizacja obejmuje dodanie skryptów JS, w celu dodania trochę fantazji do naszej aplikacji </br> Pozdrawiam Twórca :-)'),
(6, 'System Logowania', '2021-04-17', 'Aktualizacja obejmuje stworzenie pełnego systemu (U/R/L), który działa i dodanie panelu konta użytkownika </br> Pozdrawiam Twórca :-)'),
(7, 'System Logowania(aktualizacja)', '2021-04-25', 'Aktualizacja obejmuje dodanie więcej opcji panelu użytkownika </br> takich jak np. (wylogowanie, usuwanie, czy nieskończona jeszcze możliwość edycji konta) </br> Pozdrawiam Twórca :-)'),
(8, 'Usprawnienie', '2021-04-30', 'Aktualizacja obejmuje tytułowe usprawnienie połączeń między skryptami PHP, </br> i dodanie zabezpieczeń na poziomie systemu (U/R/L) i innych </br> Pozdrawiam Twórca :-)'),
(9, 'Analiza', '2021-05-24', 'Aktualizacja obejmuje szczegółową analizę całego systemu \"Wypiekarni\" </br> oraz naprawienie znalezionych błędów i zabezpieczeń </br> Pozdrawiam Twórca :-)'),
(10, 'Kontrolki', '2021-05-31', 'Aktualizacja obejmuje dodanie plików kontrolnych, </br> które pełnią funkcję informacyjną dla użytkownika, </br> oraz usprawniają niektóre procesy w aplikacji </br> Pozdrawiam Twórca :-)'),
(11, 'Siła PHP', '2022-07-27', 'Dziś jeszcze mocniej zastosowałem siłę PHP i wprowadziłem jeszcze więcej modyfikacji do mojego serwisu. </br> Pozdrawiam Twórca :-)'),
(12, 'Zewnętrzne informacje', '2022-07-30', 'Aktualizacja obejmuje przebudowanie całego systemu mojej aplikacji </br> w taki sposób aby kod był napisany w API (MODULARNO-PROCEDURALNYM), czyli tam gdzie potrzeba dostempu do bazy, tam jest. </br> Pozdrawiam Twórca :-)'),
(13, 'Aktualizacja Bazy', '2022-08-25', 'W tej aktualizacji zmieniłem strukturę mojej bazy danych'),
(14, 'Ożywienie zamówień', '2022-10-28', 'W tej aktualizacji w końcu udało mi się ukończyć budowę pełnego systemu tworzenia zamówień </br> z obsługą rodzajów produktów (system: \"ADIO\") przy dodawaniu do bazy zamówienia. Pozdrawiam Twórca :-)'),
(15, 'Prace Naprawcze', '2022-11-04', 'Właśnie wyszła nowa aktualizacja która naprawia min. </br> zabezpieczenie przed zaznaczeniem wielu checkboxów, </br> oraz przygotowuję się do uruchomienia koszyka. Pozdrawiam Twórca :-)'),
(16, 'Ostatnie Poprawki', '2022-11-05', 'W tej aktualizacji dodałęm podstawową funkcjonalność koszyka, mianowicie wyświetlenie zamówionych produktów. </br> Dodatkowo zmieniłem logo naszej aplikacji. </br> Pozdrawiam Twórca :-)'),
(17, 'System \"Zamówień\": Ukończony', '2022-12-19', 'W tej aktualizacji dodałem możliwość ręcznego aktywowania zamówień przez użytkownika, </br> w celu lepszej automatyzacji pracy mojego sklepu. </br> Naprawiłem też kilka błędów związanych z koszykiem. </br> Pozdrawiam Twórca :-)'),
(18, 'Następny Update', '2023-01-05', 'W tej aktualizacji przebudowywuję moją aplikację, a właściwie silnik łączący się z bazą danych, </br> na silnik oparty o bibliotekę PDO która usprawni pracę nad serwisem. </br> W skrócię jeszcze bardziej podzielę mój sklep o wprowadzę programowanie obiektowe. </br> Pozdrawiam Twórca :-)'),
(19, 'Chwila na oddech', '2023-01-09', 'W tej aktualizacji chwilowo wstrzymuję pracę nad moją aplikacją </br> dopóki nie naprawię jednego błędu związanego z koszykiem. </br> Oraz chciałem poinformować o tym że zaistniała pierwsza opcja kontaktu ze mną w zakładce kontakt. </br> Pozdrawiam Twórca  :-)'),
(20, 'Remoncik', '2023-01-19', 'W tej aktualizacji naprawiłem dogłębnie błędy, które się ostatnio pojawiły, </br> wraz z powtarzającymi się elementami arkuszy stylów css. </br> Pozdrawiam Twórca ;-)'),
(21, 'Zmiany', '2023-02-19', 'W tej aktualizacji poddałem formatowaniu pliki z podsumowaniem zamówień, </br> oraz wyłączyłem \"tymczasowo\" dostęp do koszyka w ramach jego napraw. </br> Pozdrawiam Twórca :-)'),
(22, 'Proces Naprawczy', '2023-03-20', 'W tej Aktualizacji naprawiłem szczególne błędy znajdujące się w kodzie mojej aplikacji. </br> Dodatkowo zoptymalizowałem całą aplikację aby jej kod był bardziej czytelny. </br> Pozdrawiam Twórca :-)'),
(23, 'Nowe Funkcje', '2023-08-05', 'W tej aktualizacji naprawiłem krytyczne błędy w kodzie formulaży zamówień oraz </br> zaktualizowałem ikony serwisu wraz z aktualizacją silnika JQuery. </br> Usunąłem też rozwijane menu i poddałem je elastyzacji. </br> Wprowadziłem też ogólny porządek w kodzie mojego sklepu. </br> Pozdrawiam Twórca :-)'),
(24, 'Ogólne Usprawnienia', '2023-08-11', 'W tej aktualizacji naprawiłem składnię kodu naszego sklepu i przekształciłem delikatnie </br> kody skryptów JS na bardziej optymalne dla czytania. </br> Dostosowałem też skalowalność w pionie mojego serwisu, przypominam o możliwości </br> proponowania zmian i kontaktu ze mną w zakładce kontakt. </br> Pozdrawiam Twórca :-)'),
(25, 'Zmiana Zabezpieczeń', '2023-08-14', 'W tej aktualizacji naprawiłem zabezpieczenia funkcji mojego sklepu oraz silnik wyświetlający </br> login zalogowanego użytkownika w menu, jeśli użytkownik nie jest zalogowany </br> to wyświetli się napis \'Zaloguj się\'. </br> Zastosowano również lepszą czytelność kodu oraz dodano walidację </br> numeru telefonu, wszędzie tam gdzie to jest możliwe. </br> Pozdrawiam Twórca :-)'),
(26, 'Nowe Zarządzanie', '2023-09-05', 'Ta aktualizacja obejmuje dodanie zewnętrznej aplikacji do sterowania </br> zdarzeniami wypiekarni np. (Aktualizacje, Produkty, Promocje itd). </br> Zmieniłem też logo mojego sklepu które ma symbolizować połączenie 2 aplikacji w jeden serwis oto one: </br> <img id=\'k\' src=\'logo.png\'/> </br> Przerobiłemy też cały system plików wypiekarni, aby był bardziej zoptymalizowany pod nowe technologie. </br> Pozdrawiam Twórca :-)'),
(27, 'Nowe Funkcje', '2023-09-29', 'Ta aktualizacja obejmuje dodanie nowego kafelka do profilu użytkownika, który ma </br> wyświetlać aktualne promocje występujące w bazie danych wraz z ich ilością pokazywaną w kafelku. </br> Zmieniłem też wygląd przycisków akcyjnych w każdym formulażu na moim sklepie. </br> Rozdzieliłem silnik tworzenia nowego użytkownika od jego strony powitalnej </br> i od teraz strona powitalna jest osobnym modułem. </br> Zaktualizowałem ikony mojej aplikacji oraz zaimplementowałem je do </br> przycisków oraz innych części sklepu. </br> W końcu po tylu latach dodałem odpowiednią treść do wszystkich stopek w moim sklepie. </br> Z mojej strony to by było na tyle, Pozdrawiam Twórca :-)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klijeci`
--

CREATE TABLE `klijeci` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `mail` text NOT NULL,
  `telefon` text NOT NULL,
  `logi` text NOT NULL,
  `haslo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klijeci`
--

INSERT INTO `klijeci` (`id`, `imie`, `nazwisko`, `mail`, `telefon`, `logi`, `haslo`) VALUES
(1, 'Janusz', 'Kowalski', 'jkowalski@gmail.com', '12121212', 'jkowalski56', 'qwerty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `weight` int(11) NOT NULL,
  `components` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `name`, `price`, `weight`, `components`, `description`) VALUES
(1, 'Tort Urodzinowy', 50, 1000, 'Biszkopt, Krem, owoce, Kruszona Czekolada', 'Tort na żądanie, kolorowy i dla ludzi w każdym wieku'),
(2, 'Tort dla Smakoszy', 20, 1000, 'Biszkopt Kakaowy, Krem z Gożkiej czekolady, Owoce, Kruszona Biała Czekolada', 'Tort jaki chcesz i specjalnie dla ciebie'),
(3, 'Tort Jubileuszowy', 30, 1000, 'Biszkopt, Krem, Dużo owoców ', 'Tort Elegancki i wystrojny na specjalną okazję'),
(4, 'Tort Ślubny', 40, 1000, 'Biszkopt, Krem, Owoce, Posypka z biszkoptów moczonych w Weskey', 'Pyszny tort z dodatkami'),
(5, 'Ciasto Drożdżowe', 15, 1000, 'Drożdże, jajka, owoce, kruszonka', 'Pyszny drożdżowiec jak u babci'),
(6, 'Ciasto Sernik', 20, 1000, 'Ser twarogowy, białka z jajek, cukier', 'Przepyszny serniczek jak u mamy'),
(7, 'Ciasto Browne', 25, 1000, 'Czekolada Mleczna, masło, jajka, mleko, maliny, czekolada', 'Czekoladowe niebo w gębie'),
(8, 'Ciasto dziecięce', 30, 1000, 'Biszkopt kakaowy, krem malinowy, galaretka truskawkowa', 'Najlepsze dla dzieci bo dzieci to lubią'),
(9, 'Tarta jabłkowa na mlecznym kremie', 35, 1000, 'Ciasto tartowe, krem mleczno-budyniowy, jabłka', 'Pyszna tarta jabłkowa na każde spotkanie'),
(10, 'Tarta wiosenna', 30, 1000, 'Ciasto tartowe, owoce(Truskawki i Borówki), krem budyniowy z czekoladą białą ', 'Pyszna tarta, na randki i spotkania z przyjaciółmi'),
(11, 'Tarta czekoladowo-orzechowa', 25, 1000, 'Ciasto tartowe, Krem czekoladowy, orzechy w karmelu', 'Pyszna tarta na jesienne wieczory'),
(12, 'Tarta malinowa', 20, 1000, 'Ciasto tartowe, krem mleczno-czekoladowy, maliny', 'Przepyszna tarta na spotkania'),
(13, 'Ciasteczka Amerykańskie', 5, 100, 'Mąka, masło, jajka, mleko, czekolada', 'Amerykańskie ciasteczka COCO'),
(14, 'Ciasteczka Ziarna w Karmelu', 5, 100, 'karmel, ziarna', 'Na przekąske bardzo dobre'),
(15, 'Ciasteczka owsiane z bakaliami', 7, 100, 'ziarna owsa, jajka, bakalie', 'Pyszne i zdrowe ciasteczka'),
(16, 'Ciasteczka Cantuccini', 6, 150, 'Mąka, mleko, jajka, czekolada', 'Pyszne i lekkie Cantuccini po włosku'),
(17, 'Bułka Przenna', 0.8, 100, 'Mleko, mąka, jajka', 'Pyszne, świeże bułeczki tylko u nas'),
(18, 'Bułka Kajzerka', 0.8, 100, '...', '...'),
(19, 'Bułka Razowa', 0.8, 100, 'Mąka, jajka, mleko, zakwas, ziarna', 'Pyszna i zdrowa bułeczka razowa'),
(20, 'Bułka Ziarnista', 0.8, 100, 'Mąka, jajka, mleko, ziarna', 'Pyszna bułeczka z ziarnami'),
(21, 'Babeczka Czekoladowa Biała', 9, 100, 'Babeczka kakaowa z polana białączekoladą', '...'),
(22, 'Babeczka Czekoladowa Czarna', 7, 100, 'Babeczka z polana czarną czekoladą', '...'),
(23, 'Babeczka Malinowa\r\n', 5, 100, 'Babeczka, polewa lukrowa, maliny', 'babeczka polana lukrem i posypana malinami'),
(24, 'Babeczka Sezonowa', 8, 100, 'Ciasto kruche małe, krem, owoce, żelatyna', 'babeczka modyfikowana sezonowo\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `promocje`
--

CREATE TABLE `promocje` (
  `id` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `StartDate` text NOT NULL,
  `EndDate` text NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promocje`
--

INSERT INTO `promocje` (`id`, `ProductName`, `StartDate`, `EndDate`, `Value`) VALUES
(1, 'Tort Ślubny', '2023-09-25', '2023-10-01', '30'),
(2, 'Ciasto Drożdżowe', '2023-10-02', '2023-10-08', '10'),
(3, 'Ciasto Browne', '2023-10-09', '2023-10-15', '25'),
(4, 'Babeczka Sezonowa', '2023-10-16', '2023-10-22', '100'),
(5, 'Tort dla Smakoszy', '2023-10-23', '2023-10-30', '40'),
(6, 'Babeczka Sezonowa', '2023-09-30', '2023-10-15', '35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `relacje`
--

CREATE TABLE `relacje` (
  `id` int(11) NOT NULL,
  `id_klijenta` text NOT NULL,
  `id_produktu` text NOT NULL,
  `status` text NOT NULL,
  `data zamówienia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `nazwa_produkt` text NOT NULL,
  `ilosc` int(11) NOT NULL,
  `dat` date NOT NULL,
  `godzina` time NOT NULL,
  `mail` text NOT NULL,
  `telefon` int(11) NOT NULL,
  `kom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `nazwa_produkt`, `ilosc`, `dat`, `godzina`, `mail`, `telefon`, `kom`) VALUES
(1, 'Tort dla Smakoszy', 1, '2023-09-30', '12:30:00', 'jkowalski@gmail.com', 123123123, 'test'),
(2, 'Ciasto Sernik', 1, '2023-09-30', '13:30:00', 'jkowalski@gmail.com', 123123123, 'test1'),
(3, 'Tarty Malinowa', 3, '2023-09-30', '14:30:00', 'jkowalski@gmail.com', 123123123, 'test3'),
(4, 'Babeczki Czekoladowa Czarna', 4, '2023-09-30', '15:30:00', 'jkowalski@gmail.com', 123123123, 'test4'),
(5, 'Ciasteczka Cantuccini', 5, '2023-09-30', '16:30:00', 'jkowalski@gmail.com', 123123123, 'test5'),
(6, 'Bułeczek Kajzerka', 6, '2023-09-30', '17:30:00', 'jkowalski@gmail.com', 123123123, 'test6'),
(7, 'Bułeczek Przenna', 7, '2023-09-30', '18:30:00', 'jkowalski@gmail.com', 123123123, 'test7');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktualizacje`
--
ALTER TABLE `aktualizacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klijeci`
--
ALTER TABLE `klijeci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `promocje`
--
ALTER TABLE `promocje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `relacje`
--
ALTER TABLE `relacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktualizacje`
--
ALTER TABLE `aktualizacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `klijeci`
--
ALTER TABLE `klijeci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `promocje`
--
ALTER TABLE `promocje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `relacje`
--
ALTER TABLE `relacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
