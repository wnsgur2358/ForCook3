-- 데이터베이스 생성
CREATE DATABASE forcook;

-- 데이터베이스 사용
USE forcook;

-- 음식 데이터 테이블 생성
CREATE TABLE foods (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    type VARCHAR(50), -- 음식 종류
    is_spicy BOOLEAN, -- 매운 음식 여부
    is_vegetarian BOOLEAN, -- 채식 여부
    high_protein BOOLEAN, -- 고단백 음식 여부
    low_carb BOOLEAN, -- 저탄수화물 음식 여부
    calories INT, -- 칼로리
    cuisine_type ENUM('Korean', 'Chinese', 'Japanese', 'Western', 'Any'), -- 요리 스타일
    image_url VARCHAR(255), -- 이미지 URL
    recipe TEXT, -- 레시피 설명
    protein FLOAT, -- 단백질 함량
    carbs FLOAT, -- 탄수화물 함량
    fats FLOAT -- 지방 함량
);

INSERT INTO foods (name, type, is_spicy, is_vegetarian, high_protein, low_carb, calories, cuisine_type, image_url, recipe, protein, carbs, fats)
VALUES
('김치찌개', '한식', TRUE, FALSE, TRUE, FALSE, 300, 'Korean', 'https://example.com/kimchi-jjigae.jpg', '김치, 돼지고기, 두부를 넣고 끓인 찌개.', 20, 15, 10),
('비빔밥', '한식', FALSE, TRUE, TRUE, FALSE, 500, 'Korean', 'https://example.com/bibimbap.jpg', '밥 위에 다양한 나물과 고추장을 올린 비빔밥.', 15, 70, 10),
('짜장면', '중식', FALSE, FALSE, FALSE, FALSE, 600, 'Chinese', 'https://example.com/jjajangmyeon.jpg', '춘장을 곁들인 면 요리.', 10, 90, 15),
('탕수육', '중식', FALSE, FALSE, TRUE, FALSE, 700, 'Chinese', 'https://example.com/tangsuyuk.jpg', '튀긴 고기를 탕수육 소스에 버무린 요리.', 25, 60, 25),
('초밥', '일식', FALSE, FALSE, TRUE, FALSE, 350, 'Japanese', '신선한 생선과 밥으로 만든 초밥.', 18, 45, 5),
('라멘', '일식', TRUE, FALSE, TRUE, FALSE, 500, 'Japanese', '국수와 국물을 사용한 일본식 면 요리.', 20, 60, 15),
('스테이크', '양식', FALSE, FALSE, TRUE, FALSE, 700, 'Western', '구운 쇠고기 스테이크.', 40, 0, 30),
('샐러드', '양식', FALSE, TRUE, FALSE, TRUE, 150, 'Western', '신선한 채소로 만든 샐러드.', 5, 10, 5),
('카레', '인도식', TRUE, FALSE, TRUE, FALSE, 450, 'Any', '향신료가 들어간 커리 요리.', 25, 50, 20),
('타코', '멕시코식', TRUE, FALSE, FALSE, FALSE, 350, 'Any', '옥수수 전병에 고기와 채소를 넣은 요리.', 15, 40, 15);



