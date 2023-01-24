DROP DATABASE IF EXISTS restapi;
CREATE DATABASE restapi;

CREATE TABLE restapi.instrumentos(
    id_instrumento INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL,
    categoria VARCHAR(35) NOT NULL,
    precio INT NOT NULL,
    imagen VARCHAR(250) NOT NULL,
    primary key(id_instrumento)
);

CREATE TABLE restapi.usuarios(
    id_usuario INT NOT NULL AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    username VARCHAR(250) NOT NULL,
    password VARCHAR(250) NOT NULL,
    primary key(id_usuario)
);

CREATE TABLE restapi.carrito(
    id_carrito INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_instrumento INT NOT NULL,
    nombre_instrumento VARCHAR(250) NOT NULL,
    precio_instrumento INT NOT NULL,
    primary key(id_carrito)
);

INSERT INTO restapi.usuarios(full_name, username, password) VALUES('Juan Azocar', 'ju.azocar', '123');
INSERT INTO restapi.usuarios(full_name, username, password) VALUES('Leandro Plaza', 'le.plaza', '1234');
INSERT INTO restapi.usuarios(full_name, username, password) VALUES('Jose Saldias', 'jos.saldias', '12345');
INSERT INTO restapi.usuarios(full_name, username, password) VALUES('Patricio Romero', 'pat.romero', '123456');

INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Epiphone Firebird - Vintage Sunburst', 'Guitarras', '699900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175617-300-300?v=1757054550&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Epiphone Les Paul Classic - Heritage Cherry Sunburst', 'Guitarras', '789900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/176535-300-300?v=637846415571670000&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra Eléctrica Epiphone Les Paul Classic - Honeyburst', 'Guitarras', '789900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/176529-300-300?v=1758609617&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Ibanez RG550 - color Road Flare Red', 'Guitarras', '1089900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167195-300-300?v=1760620528&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Ibanez GA3ECE - Amber', 'Guitarras', '209900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/178528-300-300?v=1760806252&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Ibanez GA3 - Ambar', 'Guitarras', '169900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167408-300-300?v=1760626409&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Freeman FREG1003 Stratocaster - Black', 'Guitarras', '119900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175728-300-300?v=1760805354&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Freeman FRE40 Les Paul - 3 Tone Sunburst', 'Guitarras', '189900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167423-300-300?v=1760620571&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Freeman FRLC40 - Black', 'Guitarras', '154900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167425-300-300?v=1758383094&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Ibanez RG350DXZ - White', 'Guitarras', '609900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167426-300-300?v=1760424718&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Freeman FRA95SCET - Black', 'Guitarras', '159900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167435-300-300?v=1760620528&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARCG44 - Black', 'Guitarras', '64990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180442-300-300?v=1760731603&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARFG94 - Black', 'Guitarras', '69990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180421-300-300?v=1760736110&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Freeman FRA95NCET - Black', 'Guitarras', '159900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167454-300-300?v=1760620525&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Freeman FRCG44CEQ - Black', 'Guitarras', '139900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167464-300-300?v=1760648063&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctroacústica Ibanez AE245 - NaturalNatural', 'Guitarras', '759900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180195-300-300?v=1760620571&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra eléctrica Ibanez SA460MBW - Sunset Blue Burst', 'Guitarras', '689900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167573-300-300?v=1760645555&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARCG34 3/4 - Dark Blue Sunburst', 'Guitarras', '59990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180482-300-300?v=1760710836&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARCG34 - cuerdas de nylon', 'Guitarras', '59990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180477-300-300?v=638064577314400000&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra clásica Vizcaya ARCG34 3/4 - color violeta', 'Guitarras', '59990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175386-300-300?v=1760812536&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARCG44 - Sunburst', 'Guitarras', '63990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180467-300-300?v=1760740563&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARCG44 - Dark Red Sunburst', 'Guitarras', '63990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167776-300-300?v=1760620527&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra acústica Vizcaya ARFG94 - Tone Sunburst', 'Guitarras', '64990', 'https://audiomusicacl.vtexassets.com/arquivos/ids/180472-300-300?v=1760736047&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Guitarra electroacústica Takamine GD20CENS - color natural', 'Guitarras', '488900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167808-300-300?v=1760328454&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico LTD B-15 5 cuerdas B15 - Black', 'Bajos', '309900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167887-300-300?v=1760661825&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico Ibanez SR505E 5 cuerdas - Brown Mahogany', 'Bajos', '929900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167264-300-300?https://audiomusicacl.vtexassets.com/arquivos/ids/167264-300-300?v=1759853302&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico LTD B-205SM 5 cuerdas - See Thru Black Satin', 'Bajos', '639900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175986-300-300?v=1760475098&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico ESP Stream2 - Tone burst', 'Bajos', '2919900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/177091-300-300?v=1757444370&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico Tokai AJB97 - Yellow Sunburst', 'Bajos', '779900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/179905-300-300?v=1759962957&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico Tokai AJB106 - Gun Metal Blue', 'Bajos', '789900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/179875-300-300?v=1759691616&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Bajo eléctrico G&L Fullerton Deluxe LB-100 CR – Red', 'Bajos', '1739000', 'https://audiomusicacl.vtexassets.com/arquivos/ids/178051-300-300?v=1756266052&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Roland TD-17KV - C/ Stand MDS-COM', 'Baterías', '1859900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167259-300-300?v=1760712647&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Avatar SD201-2', 'Baterías', '809900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167379-300-300?v=1760634354&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Roland TD-07KV', 'Baterías', '1349900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170318-300-300?https://audiomusicacl.vtexassets.com/arquivos/ids/175994-300-300?v=1760645559&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Avatar A71', 'Baterías', '2079900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170318-300-300?v=1760645557&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Roland TD-07KVX', 'Baterías', '2249900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167284-300-300?v=1760645679&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería Tama Imperialstar IE50H6W de 5 piezas color Natural Zebrawood Wrap', 'Baterías', '759900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170452-300-300?v=1760620571&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Platillos Zildjian para banda Z Mac A0477 - 18 pulgadas', 'Baterías', '579900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170526-300-300?v=1760637062&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Roland V-Drums VAD 103 - Set', 'Baterías', '2529900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/179193-300-300?v=1760291504&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Kit de batería acústica VOX Telstar 2020', 'Baterías', '1829900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170522-300-300?v=1759962733&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería electrónica Roland TD-07KX', 'Baterías', '2139900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175543-300-300?v=1760645554&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Batería acústica Tama Stagestar SG52KH4C - color Black - con platillos', 'Baterías', '739900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167482-300-300?v=1760620570&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Set de batería acústica TAMA Stagestar - color \"Dark Blue\"', 'Baterías', '879900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170429-300-300?v=1760645557&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Set de Batería Tama Imperialstar IE58H6W - color Candy Apple Mist (CPM)', 'Baterías', '789900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170506-300-300?v=1760645559&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Set de batería Tama Imperialstar IE52KH6W-BOW', 'Baterías', '709900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175219-300-300?v=1760620570&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Set de Batería Tama Imperialstar IE58H6W - color Hairline Black (HBK)', 'Baterías', '631900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170510-300-300?v=1760645554&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Kawai KDP 120', 'Teclados', '1559900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/177802-300-300?v=1760804440&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Alesis Recital PRO - 88 teclas', 'Teclados', '599900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/168074-300-300?v=1760816992&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Alesis Virtue - 88 Teclas', 'Teclados', '679900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170610-300-300?v=1760620571&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Teclado personal Casio CT-S100', 'Teclados', '139900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167999-300-300?v=1760805344&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Teclado personal Casio CT-X700 - no incluye fuente de poder', 'Teclados', '299900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167915-300-300?v=1760620569&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Alesis Concert - 88 teclas', 'Teclados', '449900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/168115-300-300?v=1760793032&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano Digital de 88 teclas Alesis RECITAL', 'Teclados', '459900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/168115-300-300?v=1760793032&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano Digital Casio CDP-S110 - color negro', 'Teclados', '699900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167832-300-300?v=1760661530&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Arranger Roland E-X20', 'Teclados', '439000', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170665-300-300?v=1760462473&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Teclado portátil Alesis Harmony 54', 'Teclados', '119900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167252-300-300?v=1760112360&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Teclado personal Roland GO PIANO', 'Teclados', '499000', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167493-300-300?v=1760645557&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Kurzweil M70 SR', 'Teclados', '919900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/170833-300-300?v=1760645765&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Piano digital Korg B2N', 'Teclados', '599900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167978-300-300?v=1760620570&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Sintetizador Korg PROLOGUE-8', 'Teclados', '1299900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167879-300-300?v=1760620571&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Teclado personal Casio CT-S200 color negro', 'Teclados', '199900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/168003-300-300?v=1760626349&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Boss Katana 100 MkII - 100W', 'Amplificadores', '539900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167274-300-300?v=1760673470&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Line 6 Spider V60 MkII - 60W', 'Amplificadores', '449900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175492-300-300?v=1760596590&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de bajo Hartke Systems HD25 - 25 watts', 'Amplificadores', '229900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167294-300-300?v=1760724355&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de bajo Hartke Systems HD 150', 'Amplificadores', '599900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167305-300-300?v=1760220329&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Boss Katana 50 MkII - 50W', 'Amplificadores', '339900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/175906-300-300?v=1760646091&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Line 6 Spider V30 MkII - 30W', 'Amplificadores', '319900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/169378-300-300?v=1760642509&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra VOX AC30C2X - 30W', 'Amplificadores', '1359900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/169767-300-300?v=1757444365&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Roland JC-120 - 120W Jazz Chorus', 'Amplificadores', '1239900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/176601-300-300?v=1760475096&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de bajo Ampeg Rocket Bass 115 - 200 W', 'Amplificadores', '659900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/168727-300-300?v=1760620573&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra VOX AC15C2 - 15W RMS', 'Amplificadores', '989900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/173380-300-300?v=1760645559&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Roland JC-40 - 40W Jazz Chorus', 'Amplificadores', '869000', 'https://audiomusicacl.vtexassets.com/arquivos/ids/167221-300-300?v=1760646096&width=300&height=300&aspect=true');
INSERT INTO restapi.instrumentos(nombre, categoria, precio, imagen) VALUES('Amplificador de guitarra Line 6 Catalyst 100 - 100W', 'Amplificadores', '519900', 'https://audiomusicacl.vtexassets.com/arquivos/ids/176691-300-300?v=1760645557&width=300&height=300&aspect=true');

INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(2, 7, 'Guitarra eléctrica Freeman FREG1003 Stratocaster - Black', 119900);
INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(2, 1, 'Guitarra eléctrica Epiphone Firebird - Vintage Sunburst', 699900);
INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(2, 18, 'Guitarra acústica Vizcaya ARCG34 3/4 - Dark Blue Sunburst', 59990);
INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(1, 71, 'Amplificador de guitarra VOX AC15C2 - 15W RMS', 989900);
INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(1, 72, 'Amplificador de guitarra Roland JC-40 - 40W Jazz Chorus', 869000);
INSERT INTO restapi.carrito(id_usuario, id_instrumento, nombre_instrumento, precio_instrumento) VALUES(1, 73, 'Amplificador de guitarra Line 6 Catalyst 100 - 100W', 519900);
