DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS moons;
DROP TABLE IF EXISTS planets;
DROP TABLE IF EXISTS users;


-- use decimal for decimals numbers

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  mass VARCHAR(255),
  temp VARCHAR(255),
  gravity VARCHAR(255),
  image VARCHAR(255)
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  planet_id INT NOT NULL REFERENCES planets(id) ON DELETE CASCADE,
  orbital_period VARCHAR(255),
  mean_radius VARCHAR(255),
  image VARCHAR(255)
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

INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Mercury', '0.055 Earths', '-73℃ - 164℃', '0.38g', 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Venus', '0.815 Earths', '464℃', '0.904g', 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Venus_2_Approach_Image.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Earth', '1.0 Earths', '14℃', '1.0g', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/The_Blue_Marble_%28remastered%29.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Mars', '0.107 Earths', '-60℃', '0.37g', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Tharsis_and_Valles_Marineris_-_Mars_Orbiter_Mission_%2830055660701%29.png');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Jupiter', '317.8 Earths', '-108℃', '2.52g', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Jupiter_New_Horizons.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Saturn', '95.15 Earths', '-139℃', '1.065g', 'https://images.unsplash.com/photo-1614732414444-096e5f1122d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Neptune', '17.14 Earths', '-201℃', '1.14g', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Uranus_as_seen_by_NASA%27s_Voyager_2_%28remastered%29_-_JPEG_converted.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Uranus', '14.53 Earths', '-197℃', '0.88g', 'https://upload.wikimedia.org/wikipedia/commons/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg');
INSERT INTO planets (name, mass, temp, gravity, image) VALUES ('Pluto', '0.055 Earths', '-164℃', '0.38g', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Pluto_in_True_Color_-_High-Res.jpg');

INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image) VALUES ('The Moon', 3, '27 days', '1737km', 'https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image) VALUES ('Phobos', 4, '0.3 days', '11.2km', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Phobos_colour_2008.jpg');
INSERT INTO moons (name, planet_id, orbital_period, mean_radius, image) VALUES ('Deimos', 4, '1.2 days', '6.2km', 'https://upload.wikimedia.org/wikipedia/commons/8/86/NASA-Deimos-MarsMoon-20090221.jpg');


