엔터티 - 테이블
인스턴스 - 행(row)
속성 - 열(column)
도메인 - 데이터 타입, NOT NULL 제약 조건, CHECK 제약 조건;
기본 식별자 - PK 제약조건
외래 식별자 - FK 제약조건


식별관계 - 실선으로 표시
비식별 관계 - 점선으로 표시

고객엔터티 - 수퍼타입 : 모든 인스턴스가 속성값을 가지는 속성의 집합.
개인고객, 법인고객 엔터티 - 서브타입 : 일부 인스턴스만 속성값을 가지는 속성의 집합.

X표시가 있는 반원 : 배타 서브타입
X표시가 없는 반원 : 포함 서브타입

연관엔터티 : M:M관계를 해소하기 위해 추가한 엔터티 ex)주문 엔터티와 상품 엔터티의 M:M관계를 해소하기 위해 추가한 주문상세 엔터티
          연관 엔터티는 2개 이상의 부모엔터티와 식별관계를 가진다.

채워지지 않은 점 : 상호 포함 관계
채워진 점 : 상호 배타 관계

순환 관계 : 순환관계의 인스턴스는 동일 엔터티의 인스턴스와 페어링된다. ex) 하나의 부서는 하나의 상위 부서와 다수의 하위 부서를 가질
           수 있다.
           
이력 엔터티 : 변경 이력을 관리. (변경 정보)
  - 점 이력 : 변경일자 속성
  - 선분 이력 : 점 이력에 종료일자를 추가하여 시작일자 속성과 종료일자 속성을 관리
  
내역 엔터티 : 발생 정보를 관리. ex) 주문, 쿠폰


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
|| : 문자값이 아닌 피연산자는 문자 값으로 변환된다.
CASE 절에 ELSE 절을 기술하지 않으면 일치하는 WHEN 절이 없는 경우 널이 반환된다.
ROWID : 행을 식별할 수 있는 고유 값
힌트 : 옵티마이저에 명령을 전달하는 특별한 형태의 주석. 실행계획을 수립할 때 대부분 사용.
      일부 힌트는 SQL문의 동작을 제어한다.
LOWER( )
UPPER( )
INITCAP( )
LPAD(expr1, n [, expr2]) : expr1의 길이를 좌측으로 n만큼 늘린 후, 늘어난 공간을 expr2로 반복해서 채운다.
RPAD(expr1, n [, expr2])
LTRIM(char [, set]) : char의 좌측부터 set에 포함된 문자를 제거한다. char는 한 문자씩 set과 비교되며,
    set에 포함되지 않는 문자를 만나면 제거가 중단된다.
RTRIM "
TRIM([{{LEADING | TRAILING | BOTH} [trim_character] | trim_character} FROM] trim_source)
 : LEADING - 앞, TRAILING - 뒤.
   trim_character 만나면 제거 멈춤.
SUBSTR(char, position [,substring_length]) : char를 position 위치에서 우측으로 substring_length
    만큼 자른다. substring_length를 생략하면 끝까지 잘린다. (잘린 값을 출력하는 것임!) position이 음수인 경우
    끝에서 좌측으로 음수만큼 이동한 위치에서 우측으로 자른다. position이 char보다 크면 NULL값 반환.
SUBSTRB : 바이트 길이로 잘림.
REPLACE(char, search_string [, replacement_string]) : char에 포함된 search_string를 replacement_string으로 변경
    replacement_string의 기본값은 널.
------------------------------------


SELECT DISTINCT deptno FROM emp;

-- invalid identifier 부적합한 식별자

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