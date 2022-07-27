--SQL Backup DB

BACKUP DATABASE myDB
TO DISK = 'D:\SQL\Backups\myDB.bak';

BACKUP DATABASE w3schools
TO DISK = 'D:\SQL\Backups\w3schools.bak';

--A differential back up only backs up the parts of the database that have changed since the last full database backup.
BACKUP DATABASE w3schools
TO DISK = 'D:\SQL\Backups\w3schools.bak'
WITH DIFFERENTIAL;

BACKUP DATABASE testDB
TO DISK = 'D:\SQL\Backups\testDB.bak';