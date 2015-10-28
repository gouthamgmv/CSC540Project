#### Login

##### Student

```
SELECT *
FROM "Patron" P
WHERE P."Patron_type" = 'Student' AND 
		P."Patron_username" = username AND
		P."Patron_password" = password;
```

##### Faculty

```
SELECT *
FROM "Patron" P
WHERE P."Patron_type" = 'Faculty' AND 
		P."Patron_username" = username AND
		P."Patron_password" = password;
```

#### Display Checkout Info

##### Book
```
SELECT B."Book_title"
FROM "PublicationReservation" PR, "Publication" P, "Book" B
WHERE PR."Patron_id" = <patron_id> AND 
			PR."Publication_id" = P."Publication_id" AND
			B."Publication_id" = P."Publication_id";
```

##### Journal
```
SELECT J."Journal_title"
FROM "PublicationReservation" PR, "Publication" P, "Journal" J
WHERE PR."Patron_id" = <patron_id> AND 
			PR."Publication_id" = P."Publication_id" AND
			J."Publication_id" = P."Publication_id";
```

##### Conf
```
SELECT C."Conf_title"
FROM "PublicationReservation" PR, "Publication" P, "ConfProceeding" C
WHERE PR."Patron_id" = <patron_id> AND 
			PR."Publication_id" = P."Publication_id" AND
			C."Publication_id" = P."Publication_id";
```

##### Camera
```
SELECT C."Camera_model"
FROM "CameraReservation" CR, "Camera" C
WHERE CR."Patron_id" = <patron_id> AND 
			CR."Camera_id" = C."Camera_id";
```

##### Room
```
SELECT R."Room_num"
FROM "RoomReservation" RR, "Room" R
WHERE RR."Patron_id" = <patron_id> AND 
		RR."Room_id" = R."Room_id";
```

#### Reserve Resource

##### Publication

```
INSERT INTO "PublicationReservation"
("Patron_id", "Publication_id", "PublicationReservation_start", "PublicationReservation_due", "PublicationReservation_fee")
VALUES
(<Patron_id>, <Publication_id>, <date_start>, <date_due>, 0);
```

for book, check if the student is in the class
if Book.reserve = YES

```
SELECT *
FROM "Enroll" E, "TextBookReservation" TBR
WHERE E."Patron_id" = <Patron_id> AND
		E."Course_id" = TBR."Course" AND
		TBR."Publication_id" = <Publication_id>
```

##### Camera

```
INSERT INTO "CameraReservation"
("Patron_id", "Camera_id", "CameraReservation_start", "CameraReservation_due", "CameraReservation_fee")
VALUES
(<Patron_id>, <Camera_id>, <date_start>, <date_due>, 0);
```

##### Room

```
INSERT INTO "RoomReservation"
("Patron_id", "Room_id", "RoomReservation_start", "RoomReservation_due")
VALUES
(<Patron_id>, <Room_id>, <date_start>, <date_due>);
```

#### Waitlist

##### PublicationQ

```
INSERT INTO "PublicationQ"
("Publication_id", "Patron_id", "PublicationQ_date")
VALUES
(<Publication_id>, <Patron_id>, <date_enque>);
```

```
SELECT PQ."Patron_id", PQ."Publication_id", MIN(PQ."PublicationQ_date")
FROM PublicationQ PQ;
```

##### CameraQ

```
INSERT INTO "CameraQ"
("Camera_id", "Patron_id", "CameraQ_date")
VALUES
(<Camera_id>, <Patron_id>, <date_enque>);
```

```
SELECT CQ."Patron_id", CQ."Camera_id", MIN(CQ."CameraQ_date")
FROM CameraQ CQ;
```