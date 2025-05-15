use sql_project;
Alter Table Player_Profiles AUTO_INCREMENT = 1;
INSERT INTO Player_Profiles (player_id, biography, twitter_handle, instagram_handle) VALUES
-- Beşiktaş (1)
(1, 'Rafa Silva, Portekizli futbolcu. Hızlı ve yaratıcı bir forvet oyuncusudur. Kariyerinde Altın ayakkabı ödülüne sahiptir.', '@rafasilva_17', '@rafasilva'),
(2, 'Ciro Immobile, İtalyan golcü, Avrupa’nın en iyi santrforlarından biridir. Birçok kez Serie A gol krallığı yaşamıştır.', '@ciroimmobile17', '@ciroimmobile17'),
(3, 'Gedson Fernandes, Portekizli orta saha oyuncusu, güçlü top tekniğiyle tanınır. Genç yaşta büyük bir yetenek olarak gösterilmektedir.', '@gedson_fernandes', '@gedson_fernandes'),

-- Fenerbahçe (2)
(4, 'En Nesyri, Faslı futbolcu, güçlü fiziği ve hava toplarındaki hakimiyeti ile tanınır. Santrfor olarak görev yapmaktadır.', '@en_nesyri', '@en_nesyri'),
(5, 'Edin Džeko, Bosnalı futbolcu, uzun yıllar boyunca Avrupa’nın önde gelen golcülerinden biri olmuştur.', '@edindzeko', '@edindzeko'),
(6, 'Dušan Tadić, Sırp futbolcu, özellikle hücum hattındaki yaratıcı oyunuyla bilinir. Çok yönlü bir oyuncudur.', '@dstadic', '@dstadic'),

-- Galatasaray (3)
(7, 'Victor Osimhen, Nijeryalı futbolcu, yüksek hız ve gol yeteneğiyle tanınan genç bir forvettir.', '@victorosimhen9', '@victorosimhen9'),
(8, 'Mauro Icardi, Arjantinli futbolcu, dünya çapında tanınan golcü bir oyuncudur. Birçok kulüpte başarılı sezonlar geçirmiştir.', '@MauroIcardi', '@mauroicardi'),
(9, 'Lucas Torreira, Uruguaylı futbolcu, güçlü mücadeleci yapısı ve top kapma yetenekleriyle tanınır.', '@lucastorreira34', '@lucastorreira34'),

-- Manchester United (4)
(10, 'Marcus Rashford, İngiliz futbolcu, hızı ve çevikliğiyle bilinir. Ayrıca sosyal sorumluluk projeleri ile de tanınmaktadır.', '@MarcusRashford', '@marcusrashford'),
(11, 'Bruno Fernandes, Portekizli futbolcu, olağanüstü top kontrolü ve oyun kurma yeteneği ile dikkat çeker.', '@brunofernandes8', '@brunofernandes8'),
(12, 'Rasmus Højlund, Danimarkalı futbolcu, forvet olarak görev yapar ve büyük bir potansiyele sahiptir.', '@RasmusHojlund', '@rasmushojlund'),

-- Arsenal (5)
(13, 'Bukayo Saka, İngiliz futbolcu, hızlı ve yaratıcı oyun tarzı ile dikkat çeker. Genç yaşta büyük başarılar elde etmiştir.', '@BukayoSaka87', '@bukayosaka87'),
(14, 'Martin Ødegaard, Norveçli futbolcu, top tekniği ve oyun kurma becerisi ile tanınır.', '@m_artinodegaard', '@martinodegaard'),
(15, 'Kai Havertz, Alman futbolcu, çok yönlülüğü ile bilinir ve ofansif orta saha oyuncusu olarak görev yapmaktadır.', '@kaihavertz29', '@kaihavertz29'),

-- Manchester City (6)
(16, 'Kevin De Bruyne, Belçikalı futbolcu, mükemmel pas yetenekleri ve oyun görüşü ile dünyaca ünlüdür.', '@DeBruyneKev', '@kevindebruyne'),
(17, 'Erling Haaland, Norveçli futbolcu, inanılmaz gol yeteneği ve fiziksel gücü ile dikkat çeker.', '@ErlingHaaland', '@erlinghaaland'),
(18, 'Rodri, İspanyol futbolcu, orta sahada top kontrolü ve pas yeteneği ile tanınır.', '@Rodri', '@rodri'),

-- Liverpool (7)
(19, 'Mohamed Salah, Mısırlı futbolcu, hız, dribbling ve gol yeteneği ile dünyaca ünlüdür.', '@MoSalah', '@mosalah'),
(20, 'Darwin Núñez, Uruguaylı futbolcu, hızı ve gücü ile forvet olarak görev yapmaktadır.', '@Darwinn99', '@darwin92'),
(21, 'Virgil van Dijk, Hollandalı futbolcu, savunmadaki liderliği ve hava toplarındaki hakimiyeti ile tanınır.', '@VirgilvDijk', '@virgilvndijk'),

-- Barcelona (8)
(22, 'Lamine Yamal, İspanyol futbolcu, genç yaşta büyük bir yetenek olarak gösterilmektedir.', '@LamineYamal', '@lamineyamall'),
(23, 'Robert Lewandowski, Polonyalı futbolcu, dünya çapında tanınan bir golcüdür.', '@lewy_official', '@_rl9'),
(24, 'Raphinha, Brezilyalı futbolcu, hız ve teknik becerileri ile tanınır.', '@Raphinha', '@raphinha'),

-- Real Madrid (9)
(25, 'Kylian Mbappé, Fransız futbolcu, dünya çapında tanınan bir forvet oyuncusudur.', '@KMbappe', '@k.mbappe'),
(26, 'Arda Güler, Türk futbolcu, genç yaşta büyük yetenek gösteren bir orta saha oyuncusudur.', '@ArdaGuler10', '@ardaguler10'),
(27, 'Jude Bellingham, İngiliz futbolcu, orta sahadaki yetenekleri ile dikkat çeker.', '@JudeBellingham', '@judebellingham'),

-- Atletico Madrid (10)
(28, 'Antoine Griezmann, Fransız futbolcu, hızı ve tekniği ile tanınır.', '@AntoGriezmann', '@antogriezmann'),
(29, 'Julian Álvarez, Arjantinli futbolcu, çok yönlü bir forvet olarak görev yapmaktadır.', '@JulianAlvarez', '@julian_alvarez'),
(30, 'Alexander Sörloth, Norveçli futbolcu, uzun boylu ve güçlü fiziği ile bilinir.', '@AlexSorloth', '@alexsorloth'),

-- Real Sociedad (11)
(31, 'Mikel Oyarzabal, İspanyol futbolcu, genç yaşta büyük bir potansiyele sahip bir forvettir.', '@MikelOyarzabal', '@mikeloyarzabal'),
(32, 'Takefusa Kubo, Japon futbolcu, teknik yetenekleri ve hızı ile bilinir.', '@takefusa_kubo', '@takefusa.kubo'),
(33, 'Umar Sadiq, Nijeryalı futbolcu, güçlü fiziği ve gol yeteneği ile tanınır.', '@UmarSadiq', '@umarsadiq');
select * from Player_Profiles;


 INSERT INTO Player_Profiles (player_id, biography, twitter_handle, instagram_handle) VALUES
-- Trabzonspor (12)
(34, 'Simon Banza, Fransız forvet oyuncusu, hızı ve güçlü fiziği ile dikkat çeker. Kariyerinde önemli başarılar elde etmiştir.', '@simon_banza', '@simon_banza'),
(35, 'Muhammad Cham, Avusturyalı orta saha oyuncusu, teknik becerisi ve top kontrolü ile tanınır. Genç yaşta büyük bir potansiyele sahiptir.', '@muhammad_cham', '@muhammad_cham'),
(36, 'Uğurcan Çakır, Türk kaleci, Trabzonspor’un vazgeçilmez oyuncularından biridir. Güçlü refleksleri ve liderliği ile tanınır.', '@ugurcancakir', '@ugurcancakir');
