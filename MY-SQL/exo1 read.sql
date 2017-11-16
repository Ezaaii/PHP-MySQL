-- part 1
CREATE TABLE Météo
    (`ville` varchar(9), `haut` int, `bas` int)
;

INSERT INTO Météo
    (`ville`, `haut`, `bas`)
VALUES
    ('Bruxelles', 27, 13),
    ('Liège', 25, 15),
    ('Namur', 26, 15),
    ('Charleroi', 25, 12),
    ('Bruges', 28, 16)
;
SELECT ville FROM météo;
SELECT ville, haut FROM météo;
SELECT ville, bas FROM météo;
SELECT ville FROM météo WHERE haut>27;
SELECT ville FROM météo WHERE bas<=27;
SELECT ville FROM météo WHERE bas=15;
SELECT ville FROM météo WHERE bas<>15;
SELECT ville FROM météo WHERE ville LIKE "%Br%";
SELECT ville FROM météo WHERE haut>=26 and haut<=28;
SELECT ville FROM météo WHERE bas=14 or bas=16;
SELECT ville FROM météo WHERE haut>=26 or bas<14;

--part 2

CREATE TABLE octocats
    (`promo` varchar(17), `firstname` varchar(15), `lastname` varchar(19), `gender` varchar(1), `birthdate` varchar(10), `age` int, `mail` varchar(29), `github` varchar(15))
;

INSERT INTO octocats
    (`promo`, `firstname`, `lastname`, `gender`, `birthdate`, `age`, `github`)
VALUES
    ('promo1-central', 'Safia', 'Bihmedn', 'F', '17/11/1990', 26, 'Safia54'),
    ('promo1-central', 'salvatore', 'saia', 'M', '20/06/1978', 38, 'salv236'),
    ('promo1-central', 'Thomas', 'Demilito', 'M', '10/03/1989', 28, 'Blutshy'),
    ('promo1-central', 'Estelle', 'Desmeurs', 'F', '28/08/1991', 25, 'EstelleDesmeurs'),
    ('promo1-central', 'geoffrey', 'marique', 'M', '09/11/1990', 26, 'creageo'),
    ('promo1-central', 'Khaled', 'Nzisabira', 'M', '26/01/1995', 22, 'THEBUNICORN'),
    ('promo1-central', 'Jimmy', 'Riguelle', 'M', '05/09/1977', 39, 'jimmyriguelle'),
    ('promo1-central', 'Daniela', 'Santos', 'F', '29/05/1984', 33, 'dnllromao'),
    ('promo1-central', 'Gabriele', 'Virga', 'M', '09/10/1994', 22, 'GabrieleVir'),
    ('promo1-central', 'Kreshnik', 'Ibërdemaj', 'M', '30/07/1985', 31, 'beThek'),
    ('promo1-central', 'Dan', 'Jansoone', 'M', '18/10/1993', 23, 'DanJsn'),
    ('promo1-central', 'Jayce Marcel', 'Kaje Banziziki', 'M', '01/03/1992', 25, 'KJayce'),
    ('promo1-central', 'Eric', 'Nsukami Zaki Mbambu', 'M', '16/05/1978', 39, 'zakysun'),
    ('promo1-central', 'David', 'Vandervaeren', 'M', '22/11/1988', 28, 'ddvdv'),
    ('promo1-central', 'Habib', 'El Maaza Gomez', 'M', '27/01/1972', 45, 'ModjoInc'),
    ('promo1-central', 'Ludovic', 'Patho', 'M', '24/06/1984', 32, 'LudovicPatho'),
    ('promo1-central', 'Santiago', 'Astete', 'M', '24/04/2017', 49, 'GitSanty'),
    ('promo1-central', 'Nadia', 'Nachit', 'F', '30/03/1982', 35, 'Nadia098'),
    ('promo1-central', 'Hugo', 'Barcelona', 'M', '31/05/1989', 27, 'kvalrie'),
    ('promo1-anderlecht', 'Miriam', 'Azzouz', 'F', '03/01/1980', 37, 'soyouz21'),
    ('promo1-anderlecht', 'Nadia', 'Benazouz', 'F', '25/08/1981', 35, 'nadiabena'),
    ('promo1-anderlecht', 'Hania', 'Doumer', 'F', '03/08/1973', 43, 'anya75'),
    ('promo1-anderlecht', 'Victor', 'Lanckriet', 'M', '09/05/1996', 21, 'lanckrietvictor'),
    ('promo1-anderlecht', 'Gary', 'Luypaert', 'M', '21/07/1989', 27, 'GaryLuypaert'),
    ('promo1-anderlecht', 'Michael', 'Mesmeaker', 'M', '07/04/1993', 24, 'Rivanos'),
    ('promo1-anderlecht', 'Japhet', 'Nkouayi', 'M', '04/04/1992', 25, 'JaphetNkouayi'),
    ('promo1-anderlecht', 'Juan Pablo', 'Quintero Torres', 'M', '25/01/1991', 26, 'Jqu1nteroT'),
    ('promo1-anderlecht', 'Thomas', 'Tonneau', 'M', '03/10/1993', 23, 'Thomas-Tonneau'),
    ('promo1-anderlecht', 'Claudy', 'Via', 'M', '29/11/1960', 56, 'ezaho'),
    ('promo1-anderlecht', 'Gilles', 'Youtou', 'M', '28/12/1978', 38, 'bbycode'),
    ('promo1-anderlecht', 'Adrian', 'Zochowski', 'M', '18/03/1996', 21, 'Zochowski'),
    ('promo1-anderlecht', 'Maria', 'Pedro Miala', 'F', '23/08/1980', 36, 'JOVITQ')
;
SELECT promo, firstname, lastname, gender, birthdate, age, github FROM octocats;
SELECT firstname FROM octocats;
SELECT firstname, lastname, age FROM octocats;
SELECT lastname FROM octocats WHERE lastname LIKE "N%";
SELECT firstname, lastname FROM octocats WHERE promo = "promo1-central";
SELECT firstname, lastname, birthdate FROM octocats WHERE promo = "promo1-anderlecht";

--part 3
SELECT firstname, lastname FROM octocats ORDER BY firstname ASC;
SELECT firstname, lastname FROM octocats ORDER BY lastname DESC;
SELECT firstname, lastname, age FROM octocats ORDER BY age ASC;
SELECT firstname, lastname, age FROM octocats ORDER BY age DESC;
SELECT firstname, lastname, age FROM octocats WHERE promo="promo1-central" ORDER BY age ASC;
SELECT firstname, lastname, age FROM octocats WHERE promo="promo1-central" and age>23 and age<28 ORDER BY age ASC;
SELECT firstname, lastname, age, gender FROM octocats WHERE promo="promo1-central" and age>25 and age<35 ORDER BY age ASC;
SELECT firstname, lastname, age, gender FROM octocats WHERE promo="promo1-central" and age>25 and age<35 and gender="M" ORDER BY age ASC;
SELECT firstname, lastname, age FROM octocats WHERE promo="promo1-central" ORDER BY age DESC LIMIT 0,1;

--part 4
SELECT COUNT(*) FROM octocats WHERE gender="M";
SELECT COUNT(*) FROM octocats WHERE promo="promo1-central" and gender="F";
SELECT COUNT(*) FROM octocats WHERE promo="promo1-central" and gender="M";
SELECT COUNT(*) FROM octocats WHERE firstname="Nadia";

SELECT firstname, YEAR(birthdate) FROM octocats;

SELECT CONCAT("Demain le maxima observé en Belgique sera de ",max(haut)," degrés.") FROM météo;
SELECT CONCAT("Demain le minima observé en Belgique sera de ",min(bas)," degrés.") FROM météo;
