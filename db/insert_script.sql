insert into albums(name, year, authors, description)
values ('Whatever People Say I Am, That’s What I’m Not', 2006,
        'Alex Turner, Jamie Cook, Andy Nicholson, Matt Helders',
        'Whatever People Say I Am, That''s What I''m Not is the debut studio album by English rock band Arctic Monkeys, released on 23 January 2006 in the United Kingdom and on 21 February 2006 in the United States by Domino Recording Company.Musically, Whatever People Say I Am, That''s What I''m Not features indie rock, garage rock revival, post-punk revival, punk rock, alternative rock, and post-Britpop. The common thematic content of the album has led to it being considered by some a concept album concerning "the lives of young Northern England clubbers". All tracks record first-person narratives of observations made within this context. "I Bet You Look Good on the Dancefloor", "Still Take You Home", "You Probably Couldn''t See for the Lights but You Were Staring Straight at Me" and "Dancing Shoes" all examine human behaviour in nightclubs.'),
       ('Favourite Worst Nightmare', 2007,
        'Alex Turner, Jamie Cook, Matt Helders, Nick O''Malley',
        'Favourite Worst Nightmare is the second studio album by English rock band Arctic Monkeys, released on 23 April 2007 by Domino Recording Company. The music on Favourite Worst Nightmare has been characterised as post-punk revival, indie rock, garage rock, and post-Britpop. In comparison to the band''s debut album Whatever People Say I Am, That''s What I''m Not, the album has been described as very, very fast and very, very loud",[10] being seen as "more ambitious, heavier...and with a fiercely bright production".'),
       ('Tranquility Base Hotel & Casino Tour', 2018,
        'Alex Turner, Nick O''Malley, Matt Helders, Jamie Cook',
        'Tranquility Base Hotel & Casino is the sixth studio album by English rock band Arctic Monkeys, released on 11 May 2018 by Domino Recording Company. Tranquility Base Hotel & Casino is a major departure from the band''s previous guitar-heavy work, being considered less accessible than its internationally successful predecessor, AM (2013). It features a rich sound that embodies psychedelic pop, lounge pop, space pop, and glam rock, as well as elements of jazz. It also draws influence from soul, progressive rock, funk, French pop and film soundtracks of the 1960s.');

insert into group_members(name, session, concert, bio)
values ('Alexander David Turner', FALSE, FALSE,
        'Alexander David Turner (born 6 January 1986) is an English singer and musician. He is best known as the frontman and principal songwriter of the rock band Arctic Monkeys, with whom he has released seven studio albums. He has also recorded with his side project involving Miles Kane, as the Last Shadow Puppets and also as a solo artist. '),
       ('Jamie Cook', FALSE, FALSE,
        'Jamie Robert Cook (born 8 July 1985) is an English guitarist and songwriter. He is best known as the guitarist and a founding member of the indie rock band Arctic Monkeys, with whom he has recorded seven studio albums.'),
       ('Andy Nicholson', FALSE, FALSE,
        'Andy James Nicholson (born 9 April 1986) is an English musician, DJ, record producer, and photographer, best known as the original bassist of rock band Arctic Monkeys, which he left in 2006. In 2008, he founded Mongrel with Jon McClure of Reverend and The Makers. In 2009, he became the bassist for ex-Milburn frontman Joe Carnall''s band The Book Club, but left later that year to join Reverend and The Makers. He is currently producing and performing in hip hop group Clubs & Spades with Maticmouth from Reverend Soundsystem.'),
       ('Matt Helders', FALSE, FALSE,
        'Matthew Helders (born 7 May 1986) is an English drummer, vocalist and songwriter. He is best known as a founding member and the drummer of indie rock band Arctic Monkeys, with whom he has recorded seven studio albums.'),
       ('Nick O''Malley', FALSE, FALSE,
        'Nicholas O''Malley (born 5 July 1985 in Sheffield), is the bass guitarist of Sheffield-based band Arctic Monkeys. O''Malley was drafted in as a temporary replacement for bassist Andy Nicholson when the latter announced he would not make the band''s North America tour in May 2006.');

insert into songs(album, name, single, description)
values (1, 'The View from the Afternoon', TRUE,
        'Alex Turner said "This is one of the last songs written for the album. There''s nothing clever, it''s just about anticipating the evening, finding comfort in familiarity and the fact that you know you''re bound to send a daft message or something before the sun comes up. I think I''ve stopped doing that now."'),
       (1, 'I Bet You Look Good on the Dancefloor', TRUE,
        'The song was recorded three times with different producers, the first version with Alan Smyth, and another with James Ford and Rich Costey, before landing on Abiss'' version.'),
       (1, 'Fake Tales of San Francisco', FALSE, NULL),
       (1, 'Dancing Shoes', FALSE, NULL),
       (1, 'You Probably Couldn''t See for the Lights but You Were Staring Straight at Me', FALSE, NULL),
       (1, 'Still Take You Home', FALSE, NULL),
       (1, 'Riot Van', FALSE, NULL),
       (1, 'Red Light Indicates Doors Are Secured', FALSE, NULL),
       (1, 'Mardy Bum', FALSE, NULL),
       (1, 'Perhaps Vampires Is a Bit Strong But...', FALSE, NULL),
       (1, 'When the Sun Goes Down', TRUE,
        'The song is about prostitution in the Neepsend district of Sheffield. Originally known as "Scummy", early reports had also suggested its name would be simply "Sun Goes Down", but the full name was confirmed on Arctic Monkeys'' website.'),
       (1, 'From the Ritz to the Rubble', FALSE, NULL),
       (1, 'A Certain Romance', FALSE, NULL);