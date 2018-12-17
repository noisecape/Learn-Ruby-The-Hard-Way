cityRegions = {
	'Lombardia' => 'Milano',
	'Lazio' => 'Roma',
	'Campania' => 'Napoli',
	'Sicilia' => 'Palermo',
	'Veneto' => 'Venezia',
	'Emilia-Romagna' => 'Bologna',
	'Piemonte' => 'Torino',
	'Puglia' => 'Bari',
	'Toscana' => 'Firenze',
	'Calabria' => 'Catanzaro',
	'Sardegna' => 'Cagliari',
	'Liguria' => 'Genova',
	'Marche' => 'Ancona',
	'Abruzzo' => 'Aquila',
	'Friuli-Venezia-Giulia' => 'Trieste',
	'Trentino-Alto-Adige' => 'Trento',
	'Umbria' => 'Perugia',
	'Basilicata' => 'Potenza',
	'Molise' => 'Campobasso',
	'Valle d\'Aosta' => 'Aosta'
}

cityRegions.each do |region, city|
	puts "The 'regional' capital of #{region} is #{city}"
end

florence = cityRegions['Toscana']
puts "I live in Pistoia, a town at about 30km to #{florence}"