CREATE TABLE IF NOT EXISTS "RXNSAT"
(
  "RXCUI"    VARCHAR(8)    NOT NULL,
  "LUI"      VARCHAR(8),
  "SUI"      VARCHAR(8),
  "RXAUI"    VARCHAR(8)    NOT NULL,
  "STYPE"    VARCHAR(50),
  "CODE"     VARCHAR(50),
  "ATUI"     VARCHAR(11),
  "SATUI"    VARCHAR(50),
  "ATN"      VARCHAR(1000) NOT NULL,
  "SAB"      VARCHAR(20)   NOT NULL,
  "ATV"      VARCHAR(4000) NOT NULL,
  "SUPPRESS" VARCHAR(1),
  "CVF"      VARCHAR(50)
);

ALTER TABLE "RXNSAT" OWNER TO "postgres";

ALTER TABLE "RXNSAT" ADD CONSTRAINT "RXNSAT_pk" PRIMARY KEY ("RXAUI", "RXCUI", "SAB", "ATN", "ATV");

CREATE UNIQUE INDEX IF NOT EXISTS "RXNSAT_RXAUI_RXCUI_SAB_ATN_ATV_uindex" ON "RXNSAT" ("RXAUI", "RXCUI", "SAB", "ATN", "ATV");

CREATE INDEX IF NOT EXISTS "X_RXNSAT_RXCUI" ON "RXNSAT" ("RXCUI");

CREATE INDEX IF NOT EXISTS "X_RXNSAT_ATV" ON "RXNSAT" ("ATV");

CREATE INDEX IF NOT EXISTS "X_RXNSAT_ATN" ON "RXNSAT" ("ATN");
