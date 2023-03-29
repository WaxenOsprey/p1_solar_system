DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS moons;
DROP TABLE IF EXISTS planets;
DROP TABLE IF EXISTS users;

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  mass VARCHAR(255),
  temp VARCHAR(255),
  gravity VARCHAR(255),
  image VARCHAR(255),
  description TEXT
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  planet_id INT NOT NULL REFERENCES planets(id) ON DELETE CASCADE,
  orbital_period VARCHAR(255),
  mean_radius VARCHAR(255),
  image VARCHAR(255),
  description TEXT
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  active BOOL
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id) ON DELETE CASCADE,
  location_name VARCHAR(255),
  discovered BOOL DEFAULT false,
  altered BOOL DEFAULT false, 
  destroyed BOOL DEFAULT false
);

INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Mercury', '0.055', 'n/a', '0.38', 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg', 'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earths Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere. Because of Mercurys elliptical – egg-shaped – orbit, and sluggish rotation, the Sun appears to rise briefly, set, and rise again from some parts of the planets surface. The same thing happens in reverse at sunset.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Venus', '0.815', '464', '0.9', 'https://upload.wikimedia.org/wikipedia/commons/5/54/Venus_-_December_23_2016.png', 'Venus is the second planet from the Sun and is Earth’s closest planetary neighbor. It’s one of the four inner, terrestrial (or rocky) planets, and it’s often called Earth’s twin because it’s similar in size and density. These are not identical twins, however – there are radical differences between the two worlds. Venus has a thick, toxic atmosphere filled with carbon dioxide and it’s perpetually shrouded in thick, yellowish clouds of sulfuric acid that trap heat, causing a runaway greenhouse effect. It’s the hottest planet in our solar system, even though Mercury is closer to the Sun. Surface temperatures on Venus are about 900 degrees Fahrenheit (475 degrees Celsius) – hot enough to melt lead. The surface is a rusty color and it’s peppered with intensely crunched mountains and thousands of large volcanoes. Scientists think it’s possible some volcanoes are still active.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Earth', '1.0', '14', '1.0', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/The_Blue_Marble_%28remastered%29.jpg', 'Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Mars', '0.107', '-60', '0.37', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Tharsis_and_Valles_Marineris_-_Mars_Orbiter_Mission_%2830055660701%29.png', 'Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and its the only planet where weve sent rovers to roam the alien landscape.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Jupiter', '317.8', '-108', '2.52', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Jupiter_New_Horizons.jpg', 'Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Saturn', '95.15', '-139', '1.06', 'https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBZ2NTIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--381c53bc39247134629366ca6731e1ca801c7473/stsci-h-p1943a-f_1200.jpg?disposition=attachment', 'Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturns.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Neptune', '17.14', '-201', '1.14', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Uranus_as_seen_by_NASA%27s_Voyager_2_%28remastered%29_-_JPEG_converted.jpg', 'Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star. It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode. Herschel tried unsuccessfully to name his discovery Georgium Sidus after King George III. Instead, the scientific community accepted Bodes suggestion to name it Uranus, the Greek god of the sky, as suggested by Bode.​');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Uranus', '14.53', '-197', '0.88', 'https://upload.wikimedia.org/wikipedia/commons/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg', 'Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846.');
INSERT INTO planets (name, mass, temp, gravity, image, description) VALUES ('Pluto', '0.055', '-164', '0.38', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Pluto_in_True_Color_-_High-Res.jpg', 'Pluto is a dwarf planet in the Kuiper Belt, a donut-shaped region of icy bodies beyond the orbit of Neptune. There may be millions of these icy objects, collectively referred to as Kuiper Belt objects (KBOs) or trans-Neptunian objects (TNOs), in this distant region of our solar system. Pluto – which is smaller than Earth’s Moon – has a heart-shaped glacier that’s the size of Texas and Oklahoma. This fascinating world has blue skies, spinning moons, mountains as high as the Rockies, and it snows – but the snow is red.');

INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('The Moon', 3, '27', '1737', 'https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg', 'Earths Moon is the only place beyond Earth where humans have set foot. The brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planets wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The Moon was likely formed after a Mars-sized body collided with Earth.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Phobos', 4, '0.3', '11.2', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Phobos_colour_2008.jpg', 'Phobos, gouged and nearly shattered by a giant impact crater and beaten by thousands of meteorite impacts, is on a collision course with Mars. Phobos is the larger of Mars two moons and is 17 x 14 x 11 miles (27 by 22 by 18 kilometers) in diameter. It orbits Mars three times a day, and is so close to the planets surface that in some locations on Mars it cannot always be seen.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Deimos', 4, '1.2', '6.2', 'https://upload.wikimedia.org/wikipedia/commons/8/86/NASA-Deimos-MarsMoon-20090221.jpg', 'Like Phobos, Deimos is a small and lumpy, heavily cratered object. Its craters are generally smaller than 1.6 miles (2.5 kilometers) in diameter, however, and it lacks the grooves and ridges seen on Phobos. Typically when a meteorite hits a surface, surface material is thrown up and out of the resulting crater. The material usually falls back to the surface surrounding the crater. However, these ejecta deposits are not seen on Deimos, perhaps because the moons gravity is so low that the ejecta escaped to space. Material does appear to have moved down slopes. Deimos also has a thick regolith, perhaps as deep as 328 feet (100 meters), formed as meteorites pulverized the surface.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Io', 5, '1.7', '1821', 'https://upload.wikimedia.org/wikipedia/commons/7/7b/Io_highest_resolution_true_color.jpg', 'Jupiters rocky moon Io is the most volcanically active world in the solar system, with hundreds of volcanoes, some erupting lava fountains dozens of miles (or kilometers) high. Ios remarkable activity is the result of a tug-of-war between Jupiters powerful gravity and smaller but precisely timed pulls from two neighboring moons that orbit farther from Jupiter – Europa and Ganymede.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Europa', 5, '3.5', '1560', 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Europa-moon-with-margins.jpg', 'Europa may be the most promising place in our solar system to find present-day environments suitable for some form of life beyond Earth. Scientists are almost certain that hidden beneath the icy surface of Europa is a salty-water ocean thought to contain twice as much water as Earth’s oceans combined. And like Earth, Europa is thought to also contain a rocky mantle and iron core.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Ganymede', 5, '7.1', '2634', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Ganymede_-_Perijove_34_Composite.png', 'Jupiter’s icy moon Ganymede is the largest moon in our solar system, even bigger than the planet Mercury, and the dwarf planet Pluto. There’s strong evidence that Ganymede has an underground saltwater ocean that may hold more water than all the water on Earths surface. It might even have ice and oceans stacked up in several layers like a club sandwich. Ganymede is the only moon known to have its own magnetic field – something typically found on planets like Earth. The magnetic field causes auroras, or bright ribbons of glowing gas, that circle the moon’s poles.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Calisto', 5, '16', '2410', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Callisto_-_July_8_1979_%2838926064465%29.jpg', 'Callisto is Jupiter’s second largest moon and the third largest moon in our solar system. It’s about the same size as Mercury. In the past, some scientists thought of Callisto as a boring “ugly duckling moon” and a “hunk of rock and ice.” That’s because the crater-covered world didn’t seem to have much going on—no active volcanoes or shifting tectonic plates. But data from NASA’s Galileo spacecraft in the 1990s revealed Callisto may have a secret: a salty ocean beneath its surface. That finding put the once seemingly dead moon on the list of worlds that could possibly harbor life.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Charon', 9, '6.4', '606', 'https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcFk2IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93125eb309882d02941a9b9319bb5ddae137c029/PIA19968.jpg?disposition=attachment)', 'At half the size of Pluto, Charon is the largest of Plutos five moons and the largest known satellite relative to its parent body. Pluto-Charon is our solar systems only known double planetary system. The same surfaces of Charon and Pluto always face each other, a phenomenon called mutual tidal locking. Charon orbits Pluto every 6.4 Earth days.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Titan', 6, '15.9', '2575', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Titan_in_true_color_by_Kevin_M._Gill.jpg', 'Saturn’s largest moon Titan is an extraordinary and exceptional world. Among our solar system’s more than 150 known moons, Titan is the only one with a substantial atmosphere. And of all the places in the solar system, Titan is the only place besides Earth known to have liquids in the form of rivers, lakes and seas on its surface. Titan is larger than the planet Mercury and is the second largest moon in our solar system. Jupiters moon Ganymede is just a little bit larger (by about 2 percent). Titans atmosphere is made mostly of nitrogen, like Earth’s, but with a surface pressure 50 percent higher than Earth’s. Titan has clouds, rain, rivers, lakes and seas of liquid hydrocarbons like methane and ethane. The largest seas are hundreds of feet deep and hundreds of miles wide. Beneath Titan’s thick crust of water ice is more liquid—an ocean primarily of water rather than methane. Titan’s subsurface water could be a place to harbor life as we know it, while its surface lakes and seas of liquid hydrocarbons could conceivably harbor life that uses different chemistry than we’re used to—that is, life as we don’t yet know it. Titan could also be a lifeless world.');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image, description) VALUES ('Enceladus', 6, '1.3', '252', 'https://upload.wikimedia.org/wikipedia/commons/8/83/PIA17202_-_Approaching_Enceladus.jpg', 'Few worlds in our solar system are as compelling as Saturn’s icy ocean moon Enceladus. A handful of worlds are thought to have liquid water oceans beneath their frozen shell, but Enceladus sprays its ocean out into space where a spacecraft can sample it. From these samples, scientists have determined that Enceladus has most of the chemical ingredients needed for life, and likely has hydrothermal vents spewing out hot, mineral-rich water into its ocean. About as wide as Arizona, Enceladus also has the whitest, most reflective surface in the solar system. The moon creates a ring of its own as it orbits Saturn—its spray of icy particles spreads out into the space around its orbit, circling the planet to form Saturn’s E ring.');