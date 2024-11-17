-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 17, 2024 at 06:39 PM
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
(27, 'Nowe Funkcje', '2023-09-29', 'Ta aktualizacja obejmuje dodanie nowego kafelka do profilu użytkownika, który ma </br> wyświetlać aktualne promocje występujące w bazie danych wraz z ich ilością pokazywaną w kafelku. </br> Zmieniłem też wygląd przycisków akcyjnych w każdym formulażu na moim sklepie. </br> Rozdzieliłem silnik tworzenia nowego użytkownika od jego strony powitalnej </br> i od teraz strona powitalna jest osobnym modułem. </br> Zaktualizowałem ikony mojej aplikacji oraz zaimplementowałem je do </br> przycisków oraz innych części sklepu. </br> W końcu po tylu latach dodałem odpowiednią treść do wszystkich stopek w moim sklepie. </br> Z mojej strony to by było na tyle, Pozdrawiam Twórca :-)'),
(28, 'Nowe Podsumowania', '2023-10-26', 'Ta aktualizacja obejmuje zmianę wyglądu oraz sposobu działania systemu zamówień w moim sklepie. </br> Usunąłem wpisywanie e-mail w zamówienie i zastąpiłem go loginem użytkownika. </br> Zmieniłem sposób generowania podsumowań oraz uczyniłem kod mojego sklepu bardziej czytelnym. </br> Pozdrawiam Twórca :-)'),
(29, 'Nowa Logika Systemu Zamówień', '2023-11-05', 'W tej aktualizacji zmieniłem delikatnie wygląd podsumowań zamówień oraz </br> usunąłem pola do wpisywania daty i czasu dostawy przez użytkownika </br> na rzecz automatyzacji oraz lepszej jakości obsługi klijenta. </br> Skompresowałem też kod mojego sklepu przez usunięcie zbędnych komentarzy z kodu. </br> Pozdrawiam Twórca :-)'),
(30, 'Nowy system rabatowy, Ulepszenia i Kompresja Zamówień', '2024-06-16', 'W tej aktualizacji dodałem do kafelków promocyjnych w waszych profilach przycisk, który kopiuje kod rabatowy z promocji. </br> Aktualnie można wkleić ten kod z promocji do formularza zamówienia jeśli jest aktywna promocja w sklepie. </br> Jeśli kod promocyjny będzie nie zgodny z kodami w promocjach, rabat się nie naliczy. </br> Pracę nad ulepszeniami nadal trwają i w dzisiejszej aktualizacji publikuję kilka z nich. </br> Pozdrawiam Twórca :-)'),
(31, 'Dynamiczne listy produktów i optymalizacja kodu', '2024-09-01', 'Zmieniono stan pola wyboru na dynamicznie generowaną listę produktów wybieranych z bazy danych według nazwy kategorii,</br> usunięto funkcje JavaScript do wyświetlania kalendarza z czasem w nagłówku aplikacji,</br> a także usunięto niepotrzebny kod z aplikacji, pliki PHP koszyka i relacji oraz zdarzenia onClick i niepotrzebny kod HTML.</br> Pozdrawiam Twórca :-)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `login`, `password`, `email`, `position`) VALUES
(1, 'admin', 'admin', 'example_company@gmail.com', 'chief');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klijeci`
--

CREATE TABLE `klijeci` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `surName` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klijeci`
--

INSERT INTO `klijeci` (`id`, `name`, `surName`, `email`, `phone`, `login`, `password`) VALUES
(1, 'Janusz', 'Kowalski', 'jkowalski@gmail.com', '12121212', 'jkowalski56', 'qwerty'),
(2, 'Jan', 'Gorczyński', 'johngtka@gmail.com', '123123123', 'admin', 'admin');

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
  `recipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `name`, `price`, `weight`, `components`, `recipe`) VALUES
(1, 'Tort - Urodzinowy', 34, 1000, 'Biszkopt: 6jajek, 6łyżek mąki ziemniaczanej, 150g cukru, 200g mąki pszennej\nMasa: 400ml śmietanki kremówki 36%, 400g serka mascarpone, 700g truskawek, 2łyżki cukru pudru\nDo nasączania biszkopta: pół szklanki wody, 1łyżka soku z cytryny, sok wyciśnięty z 2 pomarańczy', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P1T1'),
(2, 'Tort - Dla Smakoszy', 50, 1000, 'Biszkopt: 5 jajek (S lub M), 200g cukru pudru, 75g mąki pszennej, 75g mąki ziemniaczanej, 1 łyżeczka proszku do pieczenia, opcjonalnie: 6 łyżeczek likieru amaretto do nasączenia.\nKrem: 500g mascarpone, 60ml śmietanki 30%, 2 tabliczki białej czekolady.\nOwoce: 200g malin (mogą być mrożone), 2 łyżki cukru, 1 łyżka kisielu owocowego lub skrobi ziemniaczanej.\nDekoracja: np. świeże maliny lub gotowe posypki, wiórki kokosowe itp.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P1T2'),
(3, 'Tort - Jubileuszowy', 37, 1000, 'Biszkopt: 6 - jajek, szczypta soli, 1 łyżka - cukru waniliowego, 1 szklanka - cukru, 1 szklanka - mąki, 1 łyżka - oliwy.\nPoncz: sok z cytryny, kieliszek wódki, trochę wody, cukier do smaku.\nKrem: ½ kg - śmietany 36%, 250g - sera ricotta, 1 - galaretka cytrynowa.\nMasło Orzechowe: 2 szklanki - fistaszków niesolonych i nieprażonych, szczypta soli, 2 łyżki - miodu.\nDekoracja: prażone fistaszki, kakao.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P1T3'),
(4, 'Tort - Ślubny', 38, 1000, 'Bezowy blat migdałowo-kokosowy: 40g mielonych  migdałów, 35g cukru  pudru, 35g wiórków kokosowych, skórka starta z ½ cytryny, 100g białka, 80g cukru, szczypta  soli.\nNasączenie: 75ml likieru limoncello, 75 ml wody.\nKrem cytrynowy z tymiankiem: 320 ml mleka 3,2%, 3 łyżki mąki pszennej, 3 łyżki mąki ziemniaczanej, sok z 3 cytryn, skórka starta z 2 cytryn, 3 jajka, 200g cukru, 260g masła, pół pęczka tymianku cytrynowego.\nKrem szampański: 3 żółtka, 60g cukru, 180ml wytrawnego wina musującego, 6g żelatyny, 200ml śmietanki 36%.\nPosypka z białej czekolady: 100g czekolady, 45g śmietanki 30%, dowolny barwnik  w żelu.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P1T4'),
(5, 'Ciasto - Drożdżowe', 25, 1000, 'Ciasto: 50g świeżych drożdży, 200ml mleka, 3 jajka + dodatkowo 3 żółtka, 100g drobnego cukru, 500g mąki pszennej, 100g masła, 400g truskawek.\nKruszonka: 100g mąki pszennej, 60g zimnego masła, 4 łyżki cukru (pudru lub drobnego).\nLukier Cytrynowy: łyżka soku z cytryny, 1/2 szklanki cukru pudru.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P2T1'),
(6, 'Ciasto - Sernik', 54, 1000, 'Masa: 1kg zmielonego twarogu, 250g miękkiego masła, 1 i 1/3 szklanki cukru pudru, 6 jajek, 1 opakowanie cukru wanilinowego, 150ml śmietanki 36%, 4 łyżki mąki ziemniaczanej', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P2T2'),
(7, 'Ciasto - Browne', 56, 1000, 'Masa: 200g masła, 200g gorzkiej czekolady, 3 jajka (temp. pokojowa), 250g cukru, 135g mąki, mała szczypta soli, dodatkowo: ok. 50 - 100g gorzkiej czekolady na wierzch', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P2T3'),
(8, 'Ciasto - Dziecięce', 63, 1000, 'Masa: 600g truskawek, 100g cukru pudru, 2 łyżki soku z cytryny, 20g żelatyny spożywczej (2 łyżki stołowe), 250g śmietanki 36% lub 30 (do ubijania, b. dobrze schłodzona), 500g twarogu sernikowego.\nRanty Ciasta: 200g podłużnych biszkoptów jak do tiramisu.\nDo Dekoracji​, 250g śmietanki 36% lub 30% (do ubijania, b. dobrze schłodzona), 4 łyżki cukru pudru, świeże truskawki.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P2T4'),
(9, 'Tarta - Truskawkowa Stracciatella', 50, 1000, 'Ciasto Kruche: 200g mąki pszennej, 135g masła (zimnego), mała szczypta soli, 1/3 szklanki cukru pudru, 1 żółtko.\nKrem Mascarpone: 250g serka mascarpone (zimnego), 250ml śmietanki 30% (zimnej), 1/3 szklanki cukru pudru, 1 op. cukru wanilinowego, 1 śmietanka-fix, 50g ciemnej czekolady lub dropsy czekoladowe.\nOwoce: ok. 500 g truskawek.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P3T1'),
(10, 'Tarta - Z Budyniem, Porzeczkami i Bezą', 54, 1000, 'Kruchy Spód: 150g mąki (pszennej lub po połowie ryżowej i ziemniaczanej w wersji bezglutenowej), 50g cukru, 90g masła (zimnego), 2 żółtka.\nBudyń: 1 budyń 60g śmietankowy ( słodzony ), 500ml mleka.\nOwoce: 500g czerwonych porzeczek, 4 łyżki mąki ziemniaczanej.\nBeza: 2 białka. 100g cukru, 1/2 łyżki mąki ziemniaczanej.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P3T2'),
(11, 'Tarta - Czekoladowa na spodzie Orzechowym z sosem Malinowym', 68, 1000, 'Spód: 70g orzechów pecan lub włoskich, 40g brązowego cukru, 20g miękkiego masła, 10g mąki (dowolnej, np. pszennej lub ryżowej).\nMasa Czekoladowa: 120g ciemnej czekolady, 150g śmietanki 30%, 50g masła, 1 żółtko.\nSos Malinowy: 500g malin, 40g cukru pudru.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P3T3'),
(12, 'Tarta - z Malinami i kremem Mascarpone', 60, 1000, 'Spód: 250g mąki (np. pszennej tortowej), 150g masła, schłodzonego, szczypta soli, 3 łyżki cukru, 1 jajko.\nKrem: 250g sera mascarpone, 250ml mleka zagęszczonego słodzonego (z puszki), 2 jajka oraz jedno kartonowe pudełeczko świeżych malin.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P3T4'),
(13, 'Ciasteczka - Amerykańskie z kawałkami Czekolady', 6, 100, '1 pełna szklanka (160 g) mąki pszennej, 1/3 łyżeczki soli, 1/3 łyżeczki sody oczyszczonej lub proszku do pieczenia, 2 łyżki cukru wanilinowego (lub 1 łyżeczka ekstraktu), 100g masła, 80g cukru trzcinowego, 80g cukru białego, 1 jajko, 300g czekolady (po 100 g białej, mlecznej i gorzkiej).', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P4T1'),
(14, 'Ciasteczka - Owsiane', 5, 100, '100 g masła, 1 i 1/2 szklanki płatków owsianych górskich, 3 łyżki mąki, 4 łyżki cukru, 1 łyżeczka proszku do pieczenia, 2 łyżki ziaren*, 2 jajka, opcjonalnie 1 łyżeczka miodu.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P4T2'),
(15, 'Ciasteczka - Owsiane z Bakaliami', 6, 100, '3/4 szklanki mielonych migdałów lub zmielonych płatków migdałów, 1/2 szklanki mąki pszennej lub ryżowej, 1/2 łyżeczki sody oczyszczonej, 1 szklanka płatków owsianych, 1/2 szklanki wiórków kokosowych, ok. 80g mieszanki drobnych rodzynek i suszonej żurawiny, 125g masła lub oleju kokosowego, 3 łyżki miodu.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P4T3'),
(16, 'Ciasteczka - Cantuccini', 6, 150, 'jajko - 2 szt, cukier trzcinowy - 150g, mąka pszenna - 250g, migdały - 100g, skórka cytryny tarta - 2 łyżki, proszek do pieczenia - 5g, sól - 1 szczypta. \nDodatkowo: mąka pszenna - 2 łyżki.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P4T4'),
(17, 'Bułka - Przenna', 0.4, 100, 'Mąka pszenna 75%, woda, drożdże, sól, glukoza, mąka sojowa, mąka ze słodu jęczmiennego, olej rzepakowy.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P5T1'),
(18, 'Bułka - Kajzerka', 0.34, 100, 'Mąka pszenna 68%, woda; drożdże, cukier, mąka żytnia 1,5%, olej rzepakowy, sól, skrobia ziemniaczana, mąka ze słodu pszennego, mąka ze słodu jęczmiennego', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P5T2'),
(19, 'Bułka - Ciabatta', 0.38, 100, 'Mąka Pszenna 85%, woda, sól, gluten pszenny, semolina (z pszenicy twardej), olej rzepakowy, drożdże, zakwas pszenny (mąka pszenna, woda)', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P5T3'),
(20, 'Bułka - Ziarnista', 0.8, 100, 'Mąka pszenna 49,4%, woda, mąka żytnia 15%, nasiona słonecznika 7,2%, siemię lniane złote 2%, siemię lniane 2%, drożdże, słód żytni ciemny, sól, olej rzepakowy, gluten (z pszenicy), słód pszenny jasny.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P5T4'),
(21, 'Babeczka - Czekoladowa Biała', 14, 100, '120ml mleka, 1 łyżeczka ekstraktu z wanilii, 120g masła, 70g białej czekolady, 120g mąki, 1/2 łyżeczki proszku do pieczenia, 1/4 łyżeczki sody oczyszczonej, 120g cukru, mała szczypta soli, 1 jajko, roztrzepane.\nKrem Mascarpone: 150g sera mascarpone, 50g cukru pudru, 2 łyżki soku z cytryny. \nDekoracja: np. gotowe ozdoby, kwiaty z masy marcepanowej lub posiekane orzechy włoskie.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P6T1'),
(22, 'Babeczka - Czekoladowa Czarna', 21, 100, '150g masła, 150g czekolady (np. ciemnej), 300g mąki, 2 łyżeczki proszku do pieczenia, 1/2 łyżeczki sody oczyszczonej, 2 łyżki kakao, 1 łyżka kawy zbożowej lub kakao, 1 szklanka (200g) cukru, 1 łyżka cukru wanilinowego, 2 duże jajka (L), 170ml mleka.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P6T2'),
(23, 'Babeczka - Malinowa', 17, 100, '150g masła, 1 szklanka cukru, 1/2 szklanki + 1 czubata łyżka mąki ziemniaczanej, 2 łyżeczki ekstraktu z wanilii (opcjonalnie, lub 2 łyżki cukru wanilinowego), 3 malutkie lub 2 bardzo duże jajka, 1/3 szklanki mąki pszennej, 1/2 łyżeczki proszku do pieczenia, 100g wiórków kokosowych lub zmielonych migdałów lub płatków migdałów, maliny (po 3 do jednej babeczki).', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P6T3'),
(24, 'Babeczka - Sezonowa', 25, 100, '125g miękkiego masła, 3/4 szklanki cukru pudru lub drobnego cukru do wypieków, 1 łyżeczka ekstraktu z wanilii, 2 jajka, 1 i 1/4 szklanki mąki, 1 łyżeczka proszku do pieczenia, 1/2 szklanki mleka.\nOwoce: dowolna ilość dowolnych owoców bez pestek.\nBiała Pierzynka: 250ml śmietanki kremówki 30%, bardzo zimnej, 80g gotowych małych bez (bezików) i owoce do dekoracji.', 'https://johngtka.github.io/RecipeArchiveApp/browser/product/P6T4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `promocje`
--

CREATE TABLE `promocje` (
  `id` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `StartDate` text NOT NULL,
  `EndDate` text NOT NULL,
  `SaleCode` text NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `prodName` text NOT NULL,
  `count` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `orderTime` text NOT NULL,
  `phone` int(11) NOT NULL,
  `userLogin` text NOT NULL,
  `comment` text NOT NULL,
  `SaleCode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktualizacje`
--
ALTER TABLE `aktualizacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `employers`
--
ALTER TABLE `employers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `klijeci`
--
ALTER TABLE `klijeci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `promocje`
--
ALTER TABLE `promocje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
