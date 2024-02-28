-- where
-- where 절은 특정 조건에 맞는 레코드만 선택하는데
-- 사용되며, 다양한 방법으로 조건을 설정할 수 있다.

select
	menu_name, menu_price, orderable_status
from
	tbl_menu
where
	orderable_status = 'Y';
    
    
-- tbl_menu 테이블에서 메뉴 이름, 가격, 판매상태를 조회할건데 메뉴 가격이 13000원인 친구만 조회

select
	menu_name, menu_price, orderable_status
from tbl_menu
where
	menu_price = 13000;
    
-- tbl_menu 테이블에서 메뉴 코드, 이름, 판매 상태를 조회
-- 판매상태가 Y가 아닌 애들만 조회
select
		menu_code, menu_name, orderable_status
from tbl_menu
where
	orderable_status  != 'Y';
    
-- tbl_menu 에서 메뉴 코드, 이름, 가격을 조회할건데, 가격이 20000 초과인 녀석들만 조회해줘
select menu_code, menu_name, menu_price
from tbl_menu
where menu_price > 20000;

-- tbl_menu 테이블에서 메뉴코드, 이름, 가격을 조회할건데 10000원 이상 20000원 이하 조회
select menu_code, menu_name, menu_price
from tbl_menu
where menu_price >= 10000 and menu_price <=20000;

-- tbl_menu 에서 모든 컬럼을 조회하는데,
-- 가격이 5000원 넘거나 카테고리 코드가 10인 녀석들을 조회
select *
from tbl_menu
where menu_price > 5000 or category_code = 10;

-- (and) 연산자
-- and 연산자와 함께 where 절 사용

select 1 and 1;
select 1 and 0, 0 and 1, 0 and 0;

-- tbl_menu 테이블에서 모든 컬럼을 조회하는데, 판매상태가 y 이면서 카테고리코드가 10인 것들만 조회
select *
from tbl_menu
where orderable_status = 'Y' and category_code = 10;

-- and 가 or 보다 우선순위가 높다.
-- 따라서 or 의 우선순위를 높이고싶으면 () 을 사용


-- like 연산자
-- tbl_menu 테이블에서 메뉴 이름, 가격을 조회하는데
-- 메뉴이름이 '마늘' 이라는 단어를 포함하고 있는 녀석들만 조회해줘
select menu_name, menu_price
from tbl_menu
where menu_name like '%마늘%';

-- tbl_menu 테이블에서 모든 컬럼을 조회하는데
-- 가격이 5000원 넘으면서 카테고리 코드가 10이면서 '갈치'를 포함하고있는 메뉴
select *
from tbl_menu
where menu_price > 5000 and category_code =10 and menu_name like '%갈치%';

-- in 연산자 활용
-- tbl_menu 테이블에서 메뉴이름, 카테고리코드 조회하는데
-- 카테고리 코드가 4,5,6 인 조회
select menu_name, category_code
from tbl_menu
where category_code in (4, 5, 6);

-- is null 연산자
select category_code, category_name, ref_category_code
from tbl_category
where ref_category_code is null;