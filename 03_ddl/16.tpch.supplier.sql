CREATE TABLE tpch.SUPPLIER 
(S_SUPPKEY BIGINT,
S_NAME CHAR(25),
S_ADDRESS VARCHAR(40),
S_NATIONKEY INTEGER,
S_PHONE CHAR(15),
S_ACCTBAL DECIMAL(15,2),
S_COMMENT VARCHAR(101))
WITH (:SMALL_STORAGE)
:DISTRIBUTED_BY;
