����Ƽ - ���̺�
�ν��Ͻ� - ��(row)
�Ӽ� - ��(column)
������ - ������ Ÿ��, NOT NULL ���� ����, CHECK ���� ����;
�⺻ �ĺ��� - PK ��������
�ܷ� �ĺ��� - FK ��������


�ĺ����� - �Ǽ����� ǥ��
��ĺ� ���� - �������� ǥ��

������Ƽ - ����Ÿ�� : ��� �ν��Ͻ��� �Ӽ����� ������ �Ӽ��� ����.
���ΰ�, ���ΰ� ����Ƽ - ����Ÿ�� : �Ϻ� �ν��Ͻ��� �Ӽ����� ������ �Ӽ��� ����.

Xǥ�ð� �ִ� �ݿ� : ��Ÿ ����Ÿ��
Xǥ�ð� ���� �ݿ� : ���� ����Ÿ��

��������Ƽ : M:M���踦 �ؼ��ϱ� ���� �߰��� ����Ƽ ex)�ֹ� ����Ƽ�� ��ǰ ����Ƽ�� M:M���踦 �ؼ��ϱ� ���� �߰��� �ֹ��� ����Ƽ
          ���� ����Ƽ�� 2�� �̻��� �θ���Ƽ�� �ĺ����踦 ������.

ä������ ���� �� : ��ȣ ���� ����
ä���� �� : ��ȣ ��Ÿ ����

��ȯ ���� : ��ȯ������ �ν��Ͻ��� ���� ����Ƽ�� �ν��Ͻ��� ���ȴ�. ex) �ϳ��� �μ��� �ϳ��� ���� �μ��� �ټ��� ���� �μ��� ����
           �� �ִ�.
           
�̷� ����Ƽ : ���� �̷��� ����. (���� ����)
  - �� �̷� : �������� �Ӽ�
  - ���� �̷� : �� �̷¿� �������ڸ� �߰��Ͽ� �������� �Ӽ��� �������� �Ӽ��� ����
  
���� ����Ƽ : �߻� ������ ����. ex) �ֹ�, ����


---------------------------------------------------------------------------------------------------

SELECT
FROM
COLUMN ALIAS
DISTINCT
SAMPLE
{Q|q} ' ';
DATE
TO_DATE
TIMESTAMP
TIMESTAMP WITH TIME ZONE
ADD_MONTHS
|| : ���ڰ��� �ƴ� �ǿ����ڴ� ���� ������ ��ȯ�ȴ�.
CASE ���� ELSE ���� ������� ������ ��ġ�ϴ� WHEN ���� ���� ��� ���� ��ȯ�ȴ�.
ROWID : ���� �ĺ��� �� �ִ� ���� ��
��Ʈ : ��Ƽ�������� ����� �����ϴ� Ư���� ������ �ּ�. �����ȹ�� ������ �� ��κ� ���.
      �Ϻ� ��Ʈ�� SQL���� ������ �����Ѵ�.
LOWER( )
UPPER( )
INITCAP( )
LPAD(expr1, n [, expr2]) : expr1�� ���̸� �������� n��ŭ �ø� ��, �þ ������ expr2�� �ݺ��ؼ� ä���.
RPAD(expr1, n [, expr2])
LTRIM(char [, set]) : char�� �������� set�� ���Ե� ���ڸ� �����Ѵ�. char�� �� ���ھ� set�� �񱳵Ǹ�,
    set�� ���Ե��� �ʴ� ���ڸ� ������ ���Ű� �ߴܵȴ�.
RTRIM "
TRIM([{{LEADING | TRAILING | BOTH} [trim_character] | trim_character} FROM] trim_source)
 : LEADING - ��, TRAILING - ��.
   trim_character ������ ���� ����.
SUBSTR(char, position [,substring_length]) : char�� position ��ġ���� �������� substring_length
    ��ŭ �ڸ���. substring_length�� �����ϸ� ������ �߸���. (�߸� ���� ����ϴ� ����!) position�� ������ ���
    ������ �������� ������ŭ �̵��� ��ġ���� �������� �ڸ���. position�� char���� ũ�� NULL�� ��ȯ.
SUBSTRB : ����Ʈ ���̷� �߸�.
REPLACE(char, search_string [, replacement_string]) : char�� ���Ե� search_string�� replacement_string���� ����
    replacement_string�� �⺻���� ��.
------------------------------------


SELECT DISTINCT deptno FROM emp;

-- invalid identifier �������� �ĺ���

SELECT *
FROM dept
SAMPLE (30);

SELECT q'[2'B]' AS c1, q'{[3C]}' AS C2, q'<{[1'@']}>' AS C3
FROM dual;

VAR V1 NUMBER;
EXEC :V1 := 1;
SELECT :V1 AS C1 FROM DUAL;

SELECT LOWER('abC') FROM dual;
SELECT UPPER('abC') FROM dual;