CREATE TABLE Bugs_2021 (
  -- other columns
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2021)
);

CREATE TABLE Bugs_2022 (
  -- other columns
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2022)
);
