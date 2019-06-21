DROP TABLE slrdepartment IF EXISTS;
DROP TABLE slrbranches IF EXISTS;
DROP TABLE slrfactory IF EXISTS;

CREATE TABLE slrfactory (
  id   INTEGER IDENTITY PRIMARY KEY,
  snm  VARCHAR(25),
  slongname VARCHAR(255),
  sokpo VARCHAR(255),
  sokonh  VARCHAR(255),
  stown VARCHAR(255),
  sadress VARCHAR(255),
  sadressf  VARCHAR(255),
  sphone VARCHAR(255),
  sinn VARCHAR(255),
  skpp VARCHAR(255),
  sgni VARCHAR(255),
  sbank  VARCHAR(255),
  sfio1 VARCHAR(255),
  sfio2 VARCHAR(255),
  sfio3 VARCHAR(255),
  sfio4  VARCHAR(255),
  sfio5  VARCHAR(255),
  codbr VARCHAR(255),
  spfnumber VARCHAR(255),    
  sfio6 VARCHAR(255),
  sokved VARCHAR(255),
  sokopf VARCHAR(255),
  sokato VARCHAR(255),
  sokogu VARCHAR(255),
  sokdp VARCHAR(255),
  sgniname VARCHAR(255),
  sokfs VARCHAR(255),
  sindex VARCHAR(255),
  sregion VARCHAR(255),
  svillage VARCHAR(255),
  sstreet VARCHAR(255),
  shouse VARCHAR(255),
  skorpus VARCHAR(255),
  sflat VARCHAR(255),
  sogrn VARCHAR(255),
  sfssnumber VARCHAR(255),
  sfssparentnumber VARCHAR(255),
  sfssaddnumber VARCHAR(255)
);
CREATE INDEX slrfactory_idx ON slrfactory (snm);

CREATE TABLE SLRBRANCHES (
  ID         INTEGER IDENTITY PRIMARY KEY,
  SMNEMOCODE VARCHAR(30),
  SNM  VARCHAR(30),
  IDFACTORY    INTEGER
);
CREATE INDEX SLRBRANCHES_IDX ON SLRBRANCHES (SNM);

CREATE TABLE SLRDEPARTMENT (
  ID         INTEGER IDENTITY PRIMARY KEY,
  IDPARENT   INTEGER,
  SNM        VARCHAR(255),
  CODINREF   INTEGER,
  IDCARD     INTEGER,
  SREMARK    VARCHAR(255),
  SMNEMOCODE VARCHAR(255),
  SLEVEL VARCHAR(255),
  SNMLONG VARCHAR(255),
  DBEGIN DATE,
  DEND DATE,
  DENDORDER DATE,
  DENDCLOSE DATE,
  LLIST  VARCHAR(255),
  LHIDE  VARCHAR(255),
  LNVD VARCHAR(255),
  LNOISHL VARCHAR(255),
  IDFACTORY  INTEGER,
  IDBRANCHES  INTEGER
);
ALTER TABLE SLRDEPARTMENT ADD CONSTRAINT fk_SLRDEPARTMENT_FACTORYs FOREIGN KEY (IDFACTORY) REFERENCES SLRFACTORY (id);
ALTER TABLE SLRDEPARTMENT ADD CONSTRAINT fk_SLRDEPARTMENT_BRANCHES FOREIGN KEY (IDBRANCHES) REFERENCES SLRBRANCHES (id);
CREATE INDEX SLRDEPARTMENT_IDX ON SLRDEPARTMENT (SNM);
