DECLARE
  TYPE TYPE_RECORD IS RECORD (NOME VARCHAR(250));
  R1 TYPE_RECORD;
BEGIN
  SELECT NOME INTO R1 FROM TALUNO WHERE COD_ALUNO = 44;
  Dbms_Output.PUT_LINE(R1.NOME);
END;

       DECLARE
       i number:=0;
       BEGIN
       Dbms_Output.put_line(i);
       END;

DECLARE
  TYPE TYPE_TABLE1 IS TABLE OF TALUNO%ROWTYPE INDEX BY PLS_INTEGER;
  vTable TYPE_TABLE1;
  i NUMBER:=1;
  CURSOR C1 IS
    SELECT * FROM TALUNO;
BEGIN
  OPEN C1;
  LOOP
    FETCH C1 INTO vTable(i);
      i := i + 1;
    EXIT WHEN C1%NOTFOUND;
  END LOOP;
  CLOSE C1;
  FOR i IN vTable.First..vTable.Last
  LOOP
    Dbms_Output.PUT_LINE(vTable(i).NOME);
  END LOOP;
  --SELECT nome INTO vTable.nome FROM TALUNO WHERE cod_aluno = 44;
   --Dbms_Output.PUT_LINE('TESTE');
END;

DECLARE
  TYPE TV1 IS VARRAY(9) OF number;
  v1 TV1 := TV1();
BEGIN
  v1.extend;
  v1(1) := 9;
  Dbms_Output.put_line(v1(1));
END;