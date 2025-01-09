Create database Naturopathy;
Use Naturopathy;
Create Table Patients (
P_ID Int Primary Key,
P_Name Varchar (55),
DOB Date,
Father_Name Varchar (55),
Mother_Name Varchar (55),
Phone_No Varchar (12),
Email Varchar (70)
);
Insert into Patients (P_ID,P_Name,DOB,Father_Name,Mother_Name,Phone_No,Email) Values
(1, 'Oviya Sri', '2001-01-01','Kathir','saranya', '5551234567', 'Oviya@example.com'),
(2, 'Kaviya', '2002-02-02','Raj','vijaya', '5552345678', 'Kaviya@example.com'),
(3, 'Priya', '2003-03-03','Arun','vimala', '5553456789', 'Priya@example.com'),
(4, 'Karthick', '2000-04-04','Vimal','jothi', '5554567890', 'Karthick@example.com'),
(5, 'Banu', '2000-05-16','Vijayakumar','vijayalakshmi', '5555678901', 'Babu@example.com'),
(6, 'AjithKumar', '2001-06-22','Babu','kowsalya', '5556789012', 'Ajith.Kumar@example.com'),
(7, 'Ramani', '1999-07-07','Arumugam','Bakyalakshmi', '5557890123', 'Ramani @example.com'),
(8, 'Vijay', '2006-08-08','Anandhan','Kalai', '5558901234', 'Vijay @example.com'),
(9, 'Harish', '2005-09-09','Srinivasan','Anu', '5559012345', 'Harish@example.com'),
(10,'Thenmozhi', '1999-10-12','Mohan','Ananya', '5550123456', 'Thenmozhi@example.com');
Select*From Patients;
create table Staff (
Staff_ID int primary key,
Staff_Name varchar (30),
Phone_no varchar (12),
Email varchar (70)
);
INSERT INTO Staff (Staff_ID, Staff_Name, Phone_no, Email) VALUES
(1, 'Dr. Sugan','5551234567', 'Sugan@example.com'),
(2, 'B. Bhavani Babu', '5552345678', 'Bhavani.Babu@example.com'),
(3, 'R. Vijay','5553456789', 'Vijay @example.com'),
(4, 'A. Sabarisan','5554567890', 'Sabarisan@example.com'),
(5,'V. Hari','5555678901', 'Hari@example.com');
Select *From Staff;
create table Specialist (
Staff_ID int primary key,
Staff_Name varchar (30),
Specialist Varchar (100),
Phone_no varchar (12),
Email varchar (70)
);
INSERT INTO Specialist (Staff_ID, Staff_Name, Specialist, Phone_no, Email) VALUES
(1, 'Dr. Sugan', 'yoga, Trataka, Detox, Speech Therapy, Listening Therapy, Varmam, Naturopathic Massage', '5551234567', 'Sugan@example.com'),
(2, 'B.Bhavani Babu', 'yoga, Trataka, Detox, Speech Therapy, Listening Therapy ', '5552345678', 'Bhavani.Babu@example.com'),
(3, 'R.Vijay','yoga, Trataka, Detox, Speech Therapy, Listening Therapy, Naturopathic Massage', '5553456789', 'Vijay @example.com'),
(4, 'A.Sabarisan', 'yoga, Speech Therapy, Listening Therapy ', '5554567890', 'Sabarisan@example.com'),
(5,'V. Hari', 'Silambam', '5555678901', 'Hari@example.com');
select * from Specialist;
CREATE TABLE Appointments (
A_ID int primary key,
P_ID int,
Staff_ID int,
Appointment Datetime,
Status varchar (20)
);
alter table Appointments add constraint FK_Appointment_Patients foreign key (P_ID) references Patients(P_ID);
alter table Appointments add constraint FK_Appointments_Doctors foreign key (Staff_ID) references Staff (Staff_ID);
Show columns from Appointments;
INSERT INTO Appointments (A_ID, P_ID, Staff_ID, Appointment, Status) VALUES
(1, 1, 1, '2024-01-01 09:00:00', 'Scheduled'),
(2, 2, 2, '2024-01-02 10:00:00', 'Completed'),
(3, 3, 3, '2024-01-03 11:00:00', 'Cancelled'),
(4, 4, 4, '2024-01-04 12:00:00', 'Scheduled'),
(5, 5, 5, '2024-01-05 13:00:00', 'Completed'),
(6, 6, 1, '2024-01-06 14:00:00', 'Scheduled'),
(7, 7, 2, '2024-01-07 15:00:00', 'Cancelled'),
(8, 8, 3, '2024-01-08 16:00:00', 'Scheduled'),
(9, 9, 4, '2024-01-09 17:00:00', 'Completed'),
(10, 10, 5, '2024-01-10 18:00:00', 'Scheduled');
create table MedicalHistory(
MH_ID int primary key,
P_ID int,
Medical_Condition varchar (200),
Last_visit Date,Notes Varchar (500)
);
Alter table MedicalHistory add constraint FK_MedicalHistory_Patients foreign key (P_ID) references Patients(P_ID);
INSERT INTO MedicalHistory (MH_ID, P_ID, Medical_Condition, Last_visit, Notes) VALUES
(1, 1, 'Oviya Sri', '2024-01-01', 'Muscular dystrophy'),
(2, 2, 'Kaviya', '2024-02-02', 'Epilepsy'),
(3, 3, 'Priya', '2024-03-03', 'Down syndrome'),
(4, 4, 'Karthick', '2024-04-04', 'oppositional defiance disorder'),
(5, 5, 'Banu', '2024-05-05', 'Multiple sclerosis'),
(6, 6, 'AjithKumar', '2024-06-06', 'Down syndrome'),
(7, 7, 'Ramani', '2024-07-07', 'Down syndrome'),
(8, 8, 'Vijay', '2024-08-08', 'Muscular dystrophy'),
(9, 9, 'Harish', '2024-09-09', 'Epilepsy'),
(10, 10, 'Thenmozhi', '2024-10-10', 'Multiple sclerosis');
select*from medicalhistory;
create table AppointSlot(
Slot_ID int primary key,
Staff_ID int, Slot datetime,
Status varchar (30),
foreign key (Staff_ID) references Staff(Staff_ID)
);
INSERT INTO AppointSlot (Slot_ID, Staff_ID, Slot, Status) VALUES
(1, 1, '2024-01-01 09:00:00', 'Available'),
(2, 1, '2024-01-01 10:00:00', 'Booked'),
(3, 4, '2024-01-01 11:00:00', 'Available'),
(4, 1, '2024-01-01 12:00:00', 'Booked'),
(5, 2, '2024-01-02 09:00:00', 'Available'),
(6, 2, '2024-01-02 10:00:00', 'Booked'),
(7, 2, '2024-01-02 11:00:00', 'Available'),
(8, 2, '2024-01-02 12:00:00', 'Completed'),
(9, 3, '2024-01-03 09:00:00', 'Available'),
(10, 3, '2024-01-03 10:00:00', 'Booked');
select * from AppointSlot;
Create table MonthlyDataSheet(
S_No int primary key,
P_ID Int,
P_Name Varchar (55),
Days Date,
Sleep Varchar (55),
Defecation Varchar (55),
ColdCough Varchar (55),
Attention Varchar (55),
Hyperactivity Varchar (55),
MoodSwings Varchar (55),
Behaviour Varchar (55),
SittingTolerance Varchar (55),
AnyOther Varchar (100)
);
Alter table MonthlyDataSheet add constraint FK_monthlydatasheet_Patients foreign key (P_ID) references Patients(P_ID);
INSERT INTO MonthlyDataSheet (S_No,P_ID, P_Name, Days, Sleep, Defecation, ColdCough, Attention, Hyperactivity, MoodSwings, Behaviour, SittingTolerance, AnyOther) Values
(1,1, 'Oviya Sri', '2024-10-01', 'Good', 'Normal', 'Normal', 'Good', 'Normal', 'High', 'Moderate', 'Good', 'Null'),
(2,2, 'Kaviya', '2024-10-01', 'Disturbed', 'Normal', 'Mild Cold', 'Good', 'Moderate', 'Nil', 'Good', 'Moderate', 'Null'),
(3,3, 'Priya', '2024-10-01', 'Good Sleep', 'Normal', 'Normal', 'Good', 'Nil', 'Mild', 'Good', 'Good', 'Too much of behaviour issue'),
(4,4, 'Karthick', '2024-10-01', '11 PM to 4 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(5,5, 'Banu', '2024-10-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'High', 'Good','Moderate', 'Too much of laughing'),
(6,6, 'AjithKumar', '2024-10-01', 'Good', 'Normal', 'Mild', 'Good', 'Normal', 'Mild', 'Sleep Crampy', 'Mild', 'Null'),
(7,7, 'Ramani', '2024-10-01', 'Good Sleep', 'Normal', 'Cold', 'Good', 'Moderate', 'Nil', 'Good', 'Mild', 'Null'),
(8,8, 'Vijay', '2024-10-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'Moderate', 'Good', 'Good', 'Sleep Disturb'),
(9,9, 'Harish', '2024-10-01', 'Good Sleep', 'Normal', 'Cough', 'Good', 'Normal', 'Nil', 'Good', 'Good', 'Null'),
(10,10, 'Thenmozhi', '2024-10-01', 'Disturbed', 'Normal', 'Mild', 'Good', 'Nil', 'Mild', 'Good', 'Good', 'Null'),
(11,1, 'Oviya Sri', '2024-11-01', 'Good', 'Normal', 'Normal', 'Good', 'Normal', 'High', 'Moderate', 'Good', 'Null'),
(12,2, 'Kaviya', '2024-11-01', '12 PM to 4 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(13,3, 'Priya', '2024-11-01', 'Good Sleep', 'Normal', 'Normal', 'Good', 'Nil', 'Mild', 'Good', 'Good', 'Too much of behaviour issue'),
(14,4, 'Karthick', '2024-11-01', '11 PM to 4 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(15,5, 'Banu', '2024-11-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'High', 'Good','Good', 'Too much of laughing'),
(16,6, 'AjithKumar', '2024-11-01', 'Good', 'Normal', 'Mild', 'Good', 'Normal', 'Mild', 'Sleep Crampy', 'Mild', 'Null'),
(17,7, 'Ramani', '2024-11-01', 'Good Sleep', 'Normal', 'Cold', 'Good', 'Moderate', 'Nil', 'Good', 'Mild', 'Null'),
(18,8, 'Vijay', '2024-11-01', '09 PM to 7 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(19,9, 'Harish', '2024-11-01', 'Good Sleep', 'Normal', 'Cough', 'Good', 'Normal', 'Nil', 'Good', 'Good', 'Null'),
(20,10, 'Thenmozhi', '2024-11-01', 'Disturbed', 'Normal', 'Mild', 'Good', 'Nil', 'Mild', 'Good', 'Good', 'Null'),
(21,1, 'Oviya Sri', '2024-12-01', '12 AM to 8 AM', 'Normal', 'Normal', 'Good', 'Normal', 'High', 'Moderate', 'Good', 'Null'),
(22,2, 'Kaviya', '2024-12-01', '10 PM to 4 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(23,3, 'Priya', '2024-12-01', 'Good Sleep', 'Normal', 'Normal', 'Good', 'Nil', 'Mild', 'Good', 'Good', 'Too much of behaviour issue'),
(24,4, 'Karthick', '2024-12-01', '11 PM to 4 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(25,5, 'Banu', '2024-12-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'High', 'Good','Good', 'Too much of laughing'),
(26,6, 'AjithKumar', '2024-12-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'High', 'Good','Good', 'Too much of laughing'),
(27,7, 'Ramani', '2024-12-01', 'Good Sleep', 'Normal', 'Cold', 'Good', 'Moderate', 'Nil', 'Good', 'Mild', 'Null'),
(28,8, 'Vijay', '2024-12-01', '11 PM to 7 AM', 'Normal', 'Nil', 'Good', 'Good', 'Mild', 'Sleep Crampy', 'Moderate', 'Null'),
(29,9, 'Harish', '2024-12-01', 'Good Sleep', 'Normal', 'Cough', 'Good', 'Normal', 'Nil', 'Good', 'Good', 'Null'),
(30,10, 'Thenmozhi', '2024-12-01', 'Disturbed', 'Normal', 'Normal', 'Good', 'Good', 'High', 'Good','Good', 'Too much of laughing');
Select*From monthlydatasheet;




