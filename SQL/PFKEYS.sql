CREATE TABLE table_name1 (
col_name1 col_name1,
col_name2 col_type2,
col_name3 col_type3,
col_name4 col_type4,
PRIMARY KEY(col_name1),
FOREIGN KEY(col_name2) REFERENCES table_name2(col_name2)
);