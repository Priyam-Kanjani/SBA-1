DROP DATABASE IF EXISTS ibs;

CREATE DATABASE SBA;

use SBA;

CREATE TABLE user(
Username VARCHAR(30) PRIMARY KEY,
Password VARCHAR(20) NOT NULL
);


CREATE TABLE loaninfo(
Applno INT PRIMARY KEY,
Purpose VARCHAR(100) NOT NULL,
Amtrequest INT NOT NULL,
Doa DATE NOT NULL,
Bstructure VARCHAR(15) CHECK (bstructure in ('individual', 'organisation')),
Bindicator VARCHAR(15) CHECK (bindicator in ('salaried', 'non salaried')) ,
Address VARCHAR(50) NOT NULL,
Email VARCHAR(20) NOT NULL CHECK email like '%@%.com',
Mobile INT NOT NULL check length(mobile)=10,
Status VARCHAR(20) DEFAULT 'Pending'
);


CREATE TABLE approvedloan(
Applno INT PRIMARY KEY,
Amotsanctioned INT NOT NULL,
Loanterm INT NOT NULL,
Psd VARCHAR(15) ,
Lcd VARCHAR(15) ,
Emi INT NOT NULL,
FOREIGN KEY (applno) REFERENCES loaninfo(applno)
);
