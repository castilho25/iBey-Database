--------------------------------------------------------
--  File created - Sexta-feira-Dezembro-16-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BID
--------------------------------------------------------

  CREATE TABLE "BD"."BID" 
   (	"ID" NUMBER, 
	"AMOUNT" NUMBER, 
	"CLIENTNAME" VARCHAR2(20 BYTE), 
	"LEILAOID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into BD.BID
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BD"."BID_PK" ON "BD"."BID" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BID
--------------------------------------------------------

  ALTER TABLE "BD"."BID" ADD CONSTRAINT "BID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BD"."BID" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "BD"."BID" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BID
--------------------------------------------------------

  ALTER TABLE "BD"."BID" ADD CONSTRAINT "FK_CLIENTE_BID" FOREIGN KEY ("CLIENTNAME")
	  REFERENCES "BD"."CLIENTE" ("NOME") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BD"."BID" ADD CONSTRAINT "FK_LEILAO_ID" FOREIGN KEY ("LEILAOID")
	  REFERENCES "BD"."LEILAO" ("ID") ON DELETE CASCADE ENABLE;
