CREATE TABLE tpch.lineitem
(L_ORDERKEY BIGINT,
L_PARTKEY BIGINT,
L_SUPPKEY BIGINT,
L_LINENUMBER INTEGER,
L_QUANTITY DECIMAL(15,2),
L_EXTENDEDPRICE DECIMAL(15,2),
L_DISCOUNT DECIMAL(15,2),
L_TAX DECIMAL(15,2),
L_RETURNFLAG CHAR(1),
L_LINESTATUS CHAR(1),
L_SHIPDATE DATE,
L_COMMITDATE DATE,
L_RECEIPTDATE DATE,
L_SHIPINSTRUCT CHAR(25),
L_SHIPMODE CHAR(10),
L_COMMENT VARCHAR(44))
WITH (:LARGE_STORAGE)
:DISTRIBUTED_BY
PARTITION BY RANGE (L_SHIPDATE)
(start('1992-01-01') INCLUSIVE end ('1998-12-31') INCLUSIVE every (30),
default partition others);
