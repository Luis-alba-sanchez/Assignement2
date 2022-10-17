select * 
from art;

select art.art_name, artist.first_name, artist.last_name 
from art, artist 
join autor 
on autor.id_art = autor.id_artist;

select art.art_name, visitor.pseudo, visitor.email 
from art, visitor 
join favori 
on favori.id_art = favori.id_visitor;

select art.nom, visitor.pseudo, visitor.email, artist.first_name 
from art, visitor, autor, artist 
join favori 
on favori.id_art = favori.id_visitor 
where (autor.id_art = autor.id_artist);