BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "TrainStation" (
	"Code"	TEXT NOT NULL,
	"StationName"	TEXT NOT NULL,
	"TicketOfficeID"	INTEGER NOT NULL,
	"State"	TEXT NOT NULL,
	PRIMARY KEY("Code")
);
CREATE TABLE IF NOT EXISTS "Amenities" (
	"AmenityID"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"CheckedBaggage"	TEXT,
	"Lounge"	TEXT,
	"UnaccompaniedChildren"	TEXT,
	PRIMARY KEY("AmenityID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "TicketOffice" (
	"TicketOfficeID"	INTEGER NOT NULL,
	"TicketOfficeName"	TEXT,
	"TicketOfficePhone"	TEXT,
	PRIMARY KEY("TicketOfficeID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "TrainSchedule" (
	"ScheduleID"	INTEGER NOT NULL,
	"Origin"	TEXT NOT NULL,
	"Destination"	TEXT NOT NULL,
	"TravelTime"	INTEGER NOT NULL,
	FOREIGN KEY("Destination") REFERENCES "TrainStation"("Code"),
	FOREIGN KEY("Origin") REFERENCES "TrainStation"("Code"),
	PRIMARY KEY("ScheduleID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Passengers" (
	"PassengerID"	INTEGER NOT NULL,
	"ScheduleID"	INTEGER NOT NULL,
	"TicketOfficeID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Age"	INTEGER NOT NULL,
	"Fare"	INTEGER NOT NULL,
	FOREIGN KEY("ScheduleID") REFERENCES "TrainSchedule"("ScheduleID"),
	FOREIGN KEY("TicketOfficeID") REFERENCES "TicketOffice"("TicketOfficeID"),
	PRIMARY KEY("PassengerID" AUTOINCREMENT)
);
INSERT INTO "TrainStation" VALUES ('1','WIN','Winona, Minnesota','MN');
INSERT INTO "TrainStation" VALUES ('2','WIP','Winter Park/Fraser, Colorado','CO');
INSERT INTO "TrainStation" VALUES ('3','WIT','Wittenberg, Wisconsin','WI');
INSERT INTO "TrainStation" VALUES ('4','WLN','Wilson, North Carolina','NC');
INSERT INTO "TrainStation" VALUES ('5','WLO','Winslow, Arizona','AZ');
INSERT INTO "TrainStation" VALUES ('6','WLY','Westerly, Rhode Island','RI');
INSERT INTO "TrainStation" VALUES ('7','WMA','Williams, Arizona','AZ');
INSERT INTO "TrainStation" VALUES ('8','WMJ','Williams Junction, Arizona','AZ');
INSERT INTO "TrainStation" VALUES ('9','WND','Windsor, Connecticut','CT');
INSERT INTO "TrainStation" VALUES ('10','WNK','Walloon Lake, Michigan','MI');
INSERT INTO "TrainStation" VALUES ('11','WNL','Windsor Locks, Connecticut','CT');
INSERT INTO "TrainStation" VALUES ('12','WNM','Windsor, Vermont','VT');
INSERT INTO "TrainStation" VALUES ('13','WNN','Winnemucca, Nevada','NV');
INSERT INTO "TrainStation" VALUES ('14','WNR','Walnut Ridge, Arkansas','AR');
INSERT INTO "TrainStation" VALUES ('15','WNS','Winston-Salem, North Carolina','NC');
INSERT INTO "TrainStation" VALUES ('16','WNT','Warrenton, Oregon','OR');
INSERT INTO "TrainStation" VALUES ('17','WOB','Woburn, Massachusetts','MA');
INSERT INTO "TrainStation" VALUES ('18','WOR','Worcester, Massachusetts','MA');
INSERT INTO "TrainStation" VALUES ('19','WPB','West Palm Beach, Florida','FL');
INSERT INTO "TrainStation" VALUES ('20','WPK','Winter Park, Florida','FL');
INSERT INTO "TrainStation" VALUES ('21','WPN','Waupun, Wisconsin','WI');
INSERT INTO "TrainStation" VALUES ('22','WPT','Wolf Point, Montana','MT');
INSERT INTO "TrainStation" VALUES ('23','WRJ','White River Jct., Vermont','VT');
INSERT INTO "TrainStation" VALUES ('24','WRM','Western Railway Museum, Rio Vista Junction, California','CA');
INSERT INTO "TrainStation" VALUES ('25','WSB','Westbrook, Connecticut','CT');
INSERT INTO "TrainStation" VALUES ('26','WSF','Westfield, Wisconsin','WI');
INSERT INTO "TrainStation" VALUES ('27','WSJ','Wausau (Transit Center), Wisconsin','WI');
INSERT INTO "TrainStation" VALUES ('28','WSL','Whistler, British Columbia','BC');
INSERT INTO "TrainStation" VALUES ('29','WSP','Westport, New York','NY');
INSERT INTO "TrainStation" VALUES ('30','WSS','White Sulphur Springs, West Virginia','WV');
INSERT INTO "TrainStation" VALUES ('31','WST','Wiscasset, Maine','ME');
INSERT INTO "TrainStation" VALUES ('32','WSU','Wausau-Rothschild (Lamer Bus), Wisconsin','WI');
INSERT INTO "TrainStation" VALUES ('33','WTH','Winter Haven, Florida','FL');
INSERT INTO "TrainStation" VALUES ('34','WTI','Waterloo, Indiana','IN');
INSERT INTO "TrainStation" VALUES ('35','WTN','Williston, North Dakota','ND');
INSERT INTO "TrainStation" VALUES ('36','WTS','Willits, California','CA');
INSERT INTO "TrainStation" VALUES ('37','WWA','Walla Walla, Washington','WA');
INSERT INTO "TrainStation" VALUES ('38','WWD','Wildwood, Florida','FL');
INSERT INTO "TrainStation" VALUES ('39','YAZ','Yazoo City, Mississippi','MS');
INSERT INTO "TrainStation" VALUES ('40','YEM','Yemassee, South Carolina','SC');
INSERT INTO "TrainStation" VALUES ('41','YNY','Yonkers, New York','NY');
INSERT INTO "TrainStation" VALUES ('42','YOA','Yosemite - Ahwahnee Hotel, California','CA');
INSERT INTO "TrainStation" VALUES ('43','YOC','Yosemite - Curry Village, California','CA');
INSERT INTO "TrainStation" VALUES ('44','YOF','Yosemite - Crane Flat, California','CA');
INSERT INTO "TrainStation" VALUES ('45','YOS','Yosemite - Lodge, California','CA');
INSERT INTO "TrainStation" VALUES ('46','YOT','Yosemite - Tuolumne Meadow, California','CA');
INSERT INTO "TrainStation" VALUES ('47','YOV','Yosemite - Visitor Center, California','CA');
INSERT INTO "TrainStation" VALUES ('48','YOW','Yosemite - White Wolf, California','CA');
INSERT INTO "TrainStation" VALUES ('49','YUM','Yuma, Arizona','AZ');
INSERT INTO "TrainStation" VALUES ('50','ZMW','Six Flags Discovery Kingdom Admission Ticket','CA');
INSERT INTO "Amenities" VALUES (1,'WIN','Y','N','Y');
INSERT INTO "Amenities" VALUES (2,'WIP','N','N','N');
INSERT INTO "Amenities" VALUES (3,'WIT','N','N','N');
INSERT INTO "Amenities" VALUES (4,'WLN','Y','N','Y');
INSERT INTO "Amenities" VALUES (5,'WLO','N','N','N');
INSERT INTO "Amenities" VALUES (6,'WLY','N','N','Y');
INSERT INTO "Amenities" VALUES (7,'WMA','N','N','N');
INSERT INTO "Amenities" VALUES (8,'WMJ','N','N','N');
INSERT INTO "Amenities" VALUES (9,'WND','N','N','N');
INSERT INTO "Amenities" VALUES (10,'WNK','N','N','N');
INSERT INTO "Amenities" VALUES (11,'WNL','N','N','N');
INSERT INTO "Amenities" VALUES (12,'WNM','N','N','N');
INSERT INTO "Amenities" VALUES (13,'WNN','N','N','N');
INSERT INTO "Amenities" VALUES (14,'WNR','N','N','N');
INSERT INTO "Amenities" VALUES (15,'WNS','N','N','N');
INSERT INTO "Amenities" VALUES (16,'WNT','N','N','N');
INSERT INTO "Amenities" VALUES (17,'WOB','N','N','N');
INSERT INTO "Amenities" VALUES (18,'WOR','Y','N','Y');
INSERT INTO "Amenities" VALUES (19,'WPB','Y','N','Y');
INSERT INTO "Amenities" VALUES (20,'WPK','Y','N','Y');
INSERT INTO "Amenities" VALUES (21,'WPN','N','N','N');
INSERT INTO "Amenities" VALUES (22,'WPT','N','N','Y');
INSERT INTO "Amenities" VALUES (23,'WRJ','N','N','N');
INSERT INTO "Amenities" VALUES (24,'WRM','N','N','N');
INSERT INTO "Amenities" VALUES (25,'WSB','N','N','N');
INSERT INTO "Amenities" VALUES (26,'WSF','N','N','N');
INSERT INTO "Amenities" VALUES (27,'WSJ','N','N','N');
INSERT INTO "Amenities" VALUES (28,'WSL','N','N','N');
INSERT INTO "Amenities" VALUES (29,'WSP','N','N','N');
INSERT INTO "Amenities" VALUES (30,'WSS','N','N','N');
INSERT INTO "Amenities" VALUES (31,'WST','N','N','N');
INSERT INTO "Amenities" VALUES (32,'WSU','N','N','N');
INSERT INTO "Amenities" VALUES (33,'WTH','Y','N','Y');
INSERT INTO "Amenities" VALUES (34,'WTI','N','N','N');
INSERT INTO "Amenities" VALUES (35,'WTN','Y','N','Y');
INSERT INTO "Amenities" VALUES (36,'WTS','N','N','N');
INSERT INTO "Amenities" VALUES (37,'WWA','N','N','N');
INSERT INTO "Amenities" VALUES (38,'WWD','N','N','N');
INSERT INTO "Amenities" VALUES (39,'YAZ','N','N','N');
INSERT INTO "Amenities" VALUES (40,'YEM','N','N','N');
INSERT INTO "Amenities" VALUES (41,'YNY','N','N','N');
INSERT INTO "Amenities" VALUES (42,'YOA','N','N','N');
INSERT INTO "Amenities" VALUES (43,'YOC','N','N','N');
INSERT INTO "Amenities" VALUES (44,'YOF','N','N','N');
INSERT INTO "Amenities" VALUES (45,'YOS','N','N','N');
INSERT INTO "Amenities" VALUES (46,'YOT','N','N','N');
INSERT INTO "Amenities" VALUES (47,'YOV','N','N','N');
INSERT INTO "Amenities" VALUES (48,'YOW','N','N','N');
INSERT INTO "Amenities" VALUES (49,'YUM','N','N','N');
INSERT INTO "Amenities" VALUES (50,'ZMW','N','N','N');
INSERT INTO "TicketOffice" VALUES (1,'Winona','507-452-8612');
INSERT INTO "TicketOffice" VALUES (2,'Fraser','000-000-0000');
INSERT INTO "TicketOffice" VALUES (3,'Wittenberg','800-872-7249');
INSERT INTO "TicketOffice" VALUES (4,'Wilson','252-246-1060');
INSERT INTO "TicketOffice" VALUES (5,'Winslow','000-000-0000');
INSERT INTO "TicketOffice" VALUES (6,'Westerly','401-596-2355');
INSERT INTO "TicketOffice" VALUES (7,'Williams','800-872-7249');
INSERT INTO "TicketOffice" VALUES (8,'Williams Junction','000-000-0000');
INSERT INTO "TicketOffice" VALUES (9,'Windsor','000-000-0000');
INSERT INTO "TicketOffice" VALUES (10,'Walloon Lake','800-231-2222');
INSERT INTO "TicketOffice" VALUES (11,'Windsor Locks','000-000-0000');
INSERT INTO "TicketOffice" VALUES (12,'Windsor','000-000-0000');
INSERT INTO "TicketOffice" VALUES (13,'Winnemucca','000-000-0000');
INSERT INTO "TicketOffice" VALUES (14,'Walnut Ridge','000-000-0000');
INSERT INTO "TicketOffice" VALUES (15,'Winston-Salem','336-883-7278');
INSERT INTO "TicketOffice" VALUES (16,'Warrenton','000-000-0000');
INSERT INTO "TicketOffice" VALUES (17,'Woburn','800-872-7249');
INSERT INTO "TicketOffice" VALUES (18,'Worcester','508-755-5677');
INSERT INTO "TicketOffice" VALUES (19,'West Palm Beach','561-832-6169');
INSERT INTO "TicketOffice" VALUES (20,'Winter Park','407-645-5055');
INSERT INTO "TicketOffice" VALUES (21,'Waupun','800-872-7249');
INSERT INTO "TicketOffice" VALUES (22,'Wolf Point','406-653-2350');
INSERT INTO "TicketOffice" VALUES (23,'White River Junction','802-295-7160');
INSERT INTO "TicketOffice" VALUES (24,'Rio Vista Junction','800-872-7249');
INSERT INTO "TicketOffice" VALUES (25,'Westbrook','203-777-7433');
INSERT INTO "TicketOffice" VALUES (26,'Westfield','800-872-7249');
INSERT INTO "TicketOffice" VALUES (27,'Wausau','800-872-7249');
INSERT INTO "TicketOffice" VALUES (28,'Whistler Village','604-932-5031');
INSERT INTO "TicketOffice" VALUES (29,'Westport','800-872-7249');
INSERT INTO "TicketOffice" VALUES (30,'White Sulphur Springs','000-000-0000');
INSERT INTO "TicketOffice" VALUES (31,'Wiscasset','207-882-5544');
INSERT INTO "TicketOffice" VALUES (32,'Rothschild','414-282-3566');
INSERT INTO "TicketOffice" VALUES (33,'Winter Haven','863-294-9203');
INSERT INTO "TicketOffice" VALUES (34,'Waterloo','000-000-0000');
INSERT INTO "TicketOffice" VALUES (35,'Williston','701-572-7171');
INSERT INTO "TicketOffice" VALUES (36,'Willits','000-000-0000');
INSERT INTO "TicketOffice" VALUES (37,'Walla Walla','800-872-7249');
INSERT INTO "TicketOffice" VALUES (38,'Wildwood','000-000-0000');
INSERT INTO "TicketOffice" VALUES (39,'Yazoo City','000-000-0000');
INSERT INTO "TicketOffice" VALUES (40,'Yemassee','000-000-0000');
INSERT INTO "TicketOffice" VALUES (41,'Yonkers','914-965-8500');
INSERT INTO "TicketOffice" VALUES (42,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (43,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (44,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (45,'Yosemite National Park','000-000-0000');
INSERT INTO "TicketOffice" VALUES (46,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (47,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (48,'Yosemite National Park','800-872-7249');
INSERT INTO "TicketOffice" VALUES (49,'Yuma','800-872-7249');
INSERT INTO "TicketOffice" VALUES (50,'Vallejo','800-872-7249');
INSERT INTO "TrainSchedule" VALUES (1,'WIN','WND',37);
INSERT INTO "TrainSchedule" VALUES (2,'WIP','WNK',75);
INSERT INTO "TrainSchedule" VALUES (3,'WIT','WNL',58);
INSERT INTO "TrainSchedule" VALUES (4,'WLN','YOS',74);
INSERT INTO "TrainSchedule" VALUES (5,'WLO','WNN',69);
INSERT INTO "TrainSchedule" VALUES (6,'WLY','WNR',36);
INSERT INTO "TrainSchedule" VALUES (7,'WMA','WNS',25);
INSERT INTO "TrainSchedule" VALUES (8,'WMJ','WNT',21);
INSERT INTO "TrainSchedule" VALUES (9,'WND','WOB',62);
INSERT INTO "TrainSchedule" VALUES (10,'WNK','WOR',91);
INSERT INTO "TrainSchedule" VALUES (11,'WNL','WPB',11);
INSERT INTO "TrainSchedule" VALUES (12,'WNM','WPK',10);
INSERT INTO "TrainSchedule" VALUES (13,'WNN','YOC',86);
INSERT INTO "TrainSchedule" VALUES (14,'WNR','WPT',38);
INSERT INTO "TrainSchedule" VALUES (15,'WNS','WRJ',85);
INSERT INTO "TrainSchedule" VALUES (16,'WNT','WND',25);
INSERT INTO "TrainSchedule" VALUES (17,'WOB','YOF',42);
INSERT INTO "TrainSchedule" VALUES (18,'WOR','WNL',52);
INSERT INTO "TrainSchedule" VALUES (19,'WPB','WNM',28);
INSERT INTO "TrainSchedule" VALUES (20,'WPK','WNN',72);
INSERT INTO "TrainSchedule" VALUES (21,'WPN','YOA',86);
INSERT INTO "TrainSchedule" VALUES (22,'WPT','WNS',91);
INSERT INTO "TrainSchedule" VALUES (23,'WRJ','WNT',74);
INSERT INTO "TrainSchedule" VALUES (24,'WRM','WOB',71);
INSERT INTO "TrainSchedule" VALUES (25,'WSB','ZMW',12);
INSERT INTO "TrainSchedule" VALUES (26,'WSF','WPB',23);
INSERT INTO "TrainSchedule" VALUES (27,'WSJ','WPK',60);
INSERT INTO "TrainSchedule" VALUES (28,'WSL','WPN',98);
INSERT INTO "TrainSchedule" VALUES (29,'WSP','YNY',24);
INSERT INTO "TrainSchedule" VALUES (30,'WSS','WRJ',88);
INSERT INTO "TrainSchedule" VALUES (31,'WST','WND',44);
INSERT INTO "TrainSchedule" VALUES (32,'WSU','WNK',14);
INSERT INTO "TrainSchedule" VALUES (33,'WTH','WNL',98);
INSERT INTO "TrainSchedule" VALUES (34,'WTI','YOW',26);
INSERT INTO "TrainSchedule" VALUES (35,'WTN','YUM',59);
INSERT INTO "TrainSchedule" VALUES (36,'WTS','WNR',55);
INSERT INTO "TrainSchedule" VALUES (37,'WWA','WNS',8);
INSERT INTO "TrainSchedule" VALUES (38,'WWD','WNT',17);
INSERT INTO "TrainSchedule" VALUES (39,'YAZ','WOB',42);
INSERT INTO "TrainSchedule" VALUES (40,'YEM','WOR',86);
INSERT INTO "TrainSchedule" VALUES (41,'YNY','WPB',28);
INSERT INTO "TrainSchedule" VALUES (42,'YOA','WPK',47);
INSERT INTO "TrainSchedule" VALUES (43,'YOC','WPN',41);
INSERT INTO "TrainSchedule" VALUES (44,'YOF','WPT',46);
INSERT INTO "TrainSchedule" VALUES (45,'YOS','WRJ',89);
INSERT INTO "TrainSchedule" VALUES (46,'YOT','WND',19);
INSERT INTO "TrainSchedule" VALUES (47,'YOV','WNK',47);
INSERT INTO "TrainSchedule" VALUES (48,'YOW','WNL',24);
INSERT INTO "TrainSchedule" VALUES (49,'YUM','WNM',95);
INSERT INTO "TrainSchedule" VALUES (50,'ZMW','WNN',10);
INSERT INTO "Passengers" VALUES (841,1,1,'Alhomaki, Mr. Ilmari Rudolf',20,7.93);
INSERT INTO "Passengers" VALUES (842,2,2,'Mudd, Mr. Thomas Charles',16,10.5);
INSERT INTO "Passengers" VALUES (843,3,3,'Serepeca, Miss. Augusta',30,31);
INSERT INTO "Passengers" VALUES (844,4,4,'Lemberopolous, Mr. Peter L',34,6.44);
INSERT INTO "Passengers" VALUES (845,5,5,'Culumovic, Mr. Jeso',17,8.66);
INSERT INTO "Passengers" VALUES (846,6,6,'Abbing, Mr. Anthony',42,7.55);
INSERT INTO "Passengers" VALUES (847,7,7,'Sage, Mr. Douglas Bullen',48,69.55);
INSERT INTO "Passengers" VALUES (848,8,8,'Markoff, Mr. Marin',35,7.9);
INSERT INTO "Passengers" VALUES (849,9,9,'Harper, Rev. John',28,33);
INSERT INTO "Passengers" VALUES (850,10,10,'Goldenberg, Mrs. Samuel L (Edwiga Grabowska)',25,89.1);
INSERT INTO "Passengers" VALUES (851,11,11,'Andersson, Master. Sigvard Harald Elias',4,31.28);
INSERT INTO "Passengers" VALUES (852,12,12,'Svensson, Mr. Johan',74,7.78);
INSERT INTO "Passengers" VALUES (853,13,13,'Boulos, Miss. Nourelain',9,15.25);
INSERT INTO "Passengers" VALUES (854,14,14,'Lines, Miss. Mary Conover',16,39.4);
INSERT INTO "Passengers" VALUES (855,15,15,'Carter, Mrs. Ernest Courtenay (Lilian Hughes)',44,26);
INSERT INTO "Passengers" VALUES (856,16,16,'Aks, Mrs. Sam (Leah Rosen)',18,9.35);
INSERT INTO "Passengers" VALUES (857,17,17,'Wick, Mrs. George Dennick (Mary Hitchcock)',45,164.87);
INSERT INTO "Passengers" VALUES (858,18,18,'Daly, Mr. Peter Denis',51,26.55);
INSERT INTO "Passengers" VALUES (859,19,19,'Baclini, Mrs. Solomon (Latifa Qurban)',24,19.26);
INSERT INTO "Passengers" VALUES (860,20,20,'Razi, Mr. Raihed',29,7.23);
INSERT INTO "Passengers" VALUES (861,21,21,'Hansen, Mr. Claus Peter',41,14.11);
INSERT INTO "Passengers" VALUES (862,22,22,'Giles, Mr. Frederick Edward',21,11.5);
INSERT INTO "Passengers" VALUES (863,23,23,'Swift, Mrs. Frederick Joel (Margaret Welles Barron)',48,25.93);
INSERT INTO "Passengers" VALUES (864,24,24,'Sage, Miss. Dorothy Edith "Dolly"',24,69.55);
INSERT INTO "Passengers" VALUES (865,25,25,'Gill, Mr. John William',24,13);
INSERT INTO "Passengers" VALUES (866,26,26,'Bystrom, Mrs. (Karolina)',42,13);
INSERT INTO "Passengers" VALUES (867,27,27,'Duran y More, Miss. Asuncion',27,13.86);
INSERT INTO "Passengers" VALUES (868,28,28,'Roebling, Mr. Washington Augustus II',31,50.5);
INSERT INTO "Passengers" VALUES (869,29,29,'van Melkebeke, Mr. Philemon',35,9.5);
INSERT INTO "Passengers" VALUES (870,30,30,'Johnson, Master. Harold Theodor',4,11.13);
INSERT INTO "Passengers" VALUES (871,31,31,'Balkic, Mr. Cerin',26,7.9);
INSERT INTO "Passengers" VALUES (872,32,32,'Beckwith, Mrs. Richard Leonard (Sallie Monypeny)',47,52.55);
INSERT INTO "Passengers" VALUES (873,33,33,'Carlsson, Mr. Frans Olof',33,5);
INSERT INTO "Passengers" VALUES (874,34,34,'Vander Cruyssen, Mr. Victor',47,9);
INSERT INTO "Passengers" VALUES (875,35,35,'Abelson, Mrs. Samuel (Hannah Wizosky)',28,24);
INSERT INTO "Passengers" VALUES (876,36,36,'Najib, Miss. Adele Kiamie "Jane"',15,7.23);
INSERT INTO "Passengers" VALUES (877,37,37,'Gustafsson, Mr. Alfred Ossian',20,9.85);
INSERT INTO "Passengers" VALUES (878,38,38,'Petroff, Mr. Nedelio',19,7.9);
INSERT INTO "Passengers" VALUES (879,39,39,'Laleff, Mr. Kristo',48,7.9);
INSERT INTO "Passengers" VALUES (880,40,40,'Potter, Mrs. Thomas Jr (Lily Alexenia Wilson)',56,83.16);
INSERT INTO "Passengers" VALUES (881,41,41,'Shelley, Mrs. William (Imanita Parrish Hall)',25,26);
INSERT INTO "Passengers" VALUES (882,42,42,'Markun, Mr. Johann',33,7.9);
INSERT INTO "Passengers" VALUES (883,43,43,'Dahlberg, Miss. Gerda Ulrika',22,10.52);
INSERT INTO "Passengers" VALUES (884,44,44,'Banfield, Mr. Frederick James',28,10.5);
INSERT INTO "Passengers" VALUES (885,45,45,'Sutehall, Mr. Henry Jr',25,7.05);
INSERT INTO "Passengers" VALUES (886,46,46,'Rice, Mrs. William (Margaret Norton)',39,29.13);
INSERT INTO "Passengers" VALUES (887,47,47,'Montvila, Rev. Juozas',27,13);
INSERT INTO "Passengers" VALUES (888,48,48,'Graham, Miss. Margaret Edith',19,30);
INSERT INTO "Passengers" VALUES (889,49,49,'Johnston, Miss. Catherine Helen "Carrie"',23,23.45);
INSERT INTO "Passengers" VALUES (890,50,50,'Behr, Mr. Karl Howell',26,30);
COMMIT;
