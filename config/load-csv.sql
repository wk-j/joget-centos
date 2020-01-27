BULK
INSERT view_employee
FROM '/csv/data.csv' WITH (FIELDTERMINATOR = ',',
                           ROWTERMINATOR = '\n')