CREATE TABLE IF NOT EXISTS equipmentType (
    id int(5) NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    PRIMARY KEY(id)
    );    
CREATE TABLE IF NOT EXISTS equipment (
    id int(5) NOT NULL AUTO_INCREMENT,
    equipmentType int(5) NOT NULL,
    name varchar(20) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (equipmentType) REFERENCES equipmentType(id) ON DELETE CASCADE

    );
CREATE TABLE IF NOT EXISTS relationships (
    id int(5) NOT NULL AUTO_INCREMENT,
    fromEquipment int(5) NOT NULL,
    toEquipment int(5) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (toEquipment) REFERENCES equipment(id) ON DELETE CASCADE,
    FOREIGN KEY (fromEquipment) REFERENCES equipment(id) ON DELETE CASCADE
    );
    
INSERT INTO equipmentType (id, name) VALUES (1,'PC');
INSERT INTO equipmentType (id, name) VALUES (2,'Video Card');
INSERT INTO equipmentType (id, name) VALUES (3,'Processor');
INSERT INTO equipmentType (id, name) VALUES (4,'Video card processor');

INSERT INTO equipment (id, name, equipmentType) VALUES (5,'DELL', 1);
INSERT INTO equipment (id, name, equipmentType) VALUES (6,'Lenovo', 1);
INSERT INTO equipment (id, name, equipmentType) VALUES (7,'Pravetz', 1);

INSERT INTO equipment (id, name, equipmentType) VALUES (8,'NVIDIA Riva 128', 2);
INSERT INTO equipment (id, name, equipmentType) VALUES (9,'3Dfx Vodoo', 2);
INSERT INTO equipment (id, name, equipmentType) VALUES (10,'ATI Rage', 2);

INSERT INTO equipment (id, name, equipmentType) VALUES (11,'440LX c', 4);
INSERT INTO equipment (id, name, equipmentType) VALUES (12,'DAC', 4);
INSERT INTO equipment (id, name, equipmentType) VALUES (13,'MACH 64', 4);

INSERT INTO equipment (id, name, equipmentType) VALUES (14,'Intel', 3);
INSERT INTO equipment (id, name, equipmentType) VALUES (15,'AMD', 3);
INSERT INTO equipment (id, name, equipmentType) VALUES (16,'Intel', 3);
