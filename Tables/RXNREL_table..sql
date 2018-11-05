CREATE TABLE IF NOT EXISTS "RXNREL"
(
  "RXCUI1"   VARCHAR(8)  NOT NULL,
  "RXAUI1"   VARCHAR(8)  NOT NULL,
  "STYPE1"   VARCHAR(50),
  "REL"      VARCHAR(4)  NOT NULL,
  "RXCUI2"   VARCHAR(8)  NOT NULL,
  "RXAUI2"   VARCHAR(8)  NOT NULL,
  "STYPE2"   VARCHAR(50),
  "RELA"     VARCHAR(100),
  "RUI"      VARCHAR(10) NOT NULL,
  "SRUI"     VARCHAR(50),
  "SAB"      VARCHAR(20) NOT NULL,
  "SL"       VARCHAR(1000),
  "DIR"      VARCHAR(1),
  "RG"       VARCHAR(10),
  "SUPPRESS" VARCHAR(1),
  "CVF"      VARCHAR(50)
);

ALTER TABLE "RXNREL" OWNER TO "postgres";