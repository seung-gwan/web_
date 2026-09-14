CREATE DATABASE IF NOT EXISTS rentcar
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;

CREATE USER IF NOT EXISTS 'rentcar'@'localhost' IDENTIFIED BY 'rentcar';
CREATE USER IF NOT EXISTS 'rentcar'@'127.0.0.1' IDENTIFIED BY 'rentcar';
GRANT ALL PRIVILEGES ON rentcar.* TO 'rentcar'@'localhost';
GRANT ALL PRIVILEGES ON rentcar.* TO 'rentcar'@'127.0.0.1';
FLUSH PRIVILEGES;

USE rentcar;

CREATE TABLE IF NOT EXISTS Car_member (
  member_id VARCHAR(50) PRIMARY KEY,
  member_pw VARCHAR(255) NOT NULL,
  member_name VARCHAR(100) NOT NULL,
  member_address VARCHAR(255) NOT NULL DEFAULT '',
  member_address_detail1 VARCHAR(255) NOT NULL DEFAULT '',
  member_address_detail2 VARCHAR(255) NOT NULL DEFAULT '',
  member_address_num INT NOT NULL DEFAULT 0,
  member_email VARCHAR(255) NOT NULL DEFAULT '',
  member_gender VARCHAR(20) NOT NULL DEFAULT '',
  member_car VARCHAR(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Car_Notice (
  bNum INT AUTO_INCREMENT PRIMARY KEY,
  bTitle VARCHAR(255) NOT NULL,
  bContent TEXT NOT NULL,
  bName VARCHAR(100) NOT NULL,
  bDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  bHit INT NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Sell_Review (
  sRNum INT AUTO_INCREMENT PRIMARY KEY,
  sRTitle VARCHAR(255) NOT NULL,
  sRContent TEXT NOT NULL,
  sRId VARCHAR(50) NOT NULL,
  sRDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sRHit INT NOT NULL DEFAULT 0,
  sRCar VARCHAR(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Buy_Review (
  bRNum INT AUTO_INCREMENT PRIMARY KEY,
  bRTitle VARCHAR(255) NOT NULL,
  bRContent TEXT NOT NULL,
  bRId VARCHAR(50) NOT NULL,
  bRDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  bRHit INT NOT NULL DEFAULT 0,
  bRCar VARCHAR(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Car_info (
  member_id VARCHAR(50) PRIMARY KEY,
  member_car VARCHAR(100) NOT NULL,
  car_kM VARCHAR(50) NOT NULL DEFAULT '',
  car_Num VARCHAR(50) NOT NULL,
  car_ProductY INT NOT NULL,
  car_color VARCHAR(50) NOT NULL DEFAULT '',
  car_brand VARCHAR(50) NOT NULL DEFAULT '',
  car_type VARCHAR(50) NOT NULL DEFAULT '',
  car_Accident VARCHAR(255) NOT NULL DEFAULT '',
  CONSTRAINT fk_car_info_member FOREIGN KEY (member_id)
    REFERENCES Car_member(member_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Car_SellList (
  sNum INT AUTO_INCREMENT PRIMARY KEY,
  sCar VARCHAR(100) NOT NULL,
  sCar_Num VARCHAR(50) NOT NULL,
  sCar_kM VARCHAR(50) NOT NULL DEFAULT '',
  sCar_ProductY INT NOT NULL,
  sCar_color VARCHAR(50) NOT NULL DEFAULT '',
  sCar_brand VARCHAR(50) NOT NULL DEFAULT '',
  sCar_type VARCHAR(50) NOT NULL DEFAULT '',
  sCar_Accident VARCHAR(255) NOT NULL DEFAULT '',
  sCar_Price INT NOT NULL DEFAULT 0,
  sCar_salePrice INT NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO Car_member
  (member_id, member_pw, member_name, member_address, member_address_detail1,
   member_address_detail2, member_address_num, member_email, member_gender, member_car)
VALUES
  ('demo', 'demo1234', '데모 사용자', '제주특별자치도 제주시', '테스트로 1', '', 63000,
   'demo@example.com', '남자', '아반떼');

INSERT IGNORE INTO Car_member
  (member_id, member_pw, member_name, member_address, member_address_detail1,
   member_address_detail2, member_address_num, member_email, member_gender, member_car)
VALUES
  ('1234', '1234', '테스트 회원', '', '', '', 0, '1234@example.com', '', '');

INSERT IGNORE INTO Car_info
  (member_id, member_car, car_kM, car_Num, car_ProductY, car_color, car_brand, car_type, car_Accident)
VALUES
  ('demo', '아반떼', '54000', '12가3456', 2020, 'white', '현대', '준중형', '무사고');

INSERT INTO Car_Notice (bTitle, bContent, bName, bHit)
SELECT 'RentCar 복구 안내', 'Tomcat 9와 MySQL 8 환경으로 복구된 개발용 사이트입니다.', '관리자', 0
WHERE NOT EXISTS (SELECT 1 FROM Car_Notice WHERE bTitle = 'RentCar 복구 안내');

INSERT INTO Sell_Review (sRTitle, sRContent, sRId, sRCar)
SELECT '판매 상담이 편리했습니다', '차량 정보를 등록하고 상담을 신청할 수 있습니다.', 'demo', '아반떼'
WHERE NOT EXISTS (SELECT 1 FROM Sell_Review WHERE sRTitle = '판매 상담이 편리했습니다');

INSERT INTO Buy_Review (bRTitle, bRContent, bRId, bRCar)
SELECT '구매 차량을 확인했습니다', '등록된 판매 차량을 목록과 상세 화면에서 확인할 수 있습니다.', 'demo', '쏘나타'
WHERE NOT EXISTS (SELECT 1 FROM Buy_Review WHERE bRTitle = '구매 차량을 확인했습니다');

INSERT INTO Car_SellList
  (sCar, sCar_Num, sCar_kM, sCar_ProductY, sCar_color, sCar_brand, sCar_type,
   sCar_Accident, sCar_Price, sCar_salePrice)
SELECT '쏘나타', '34나5678', '38000', 2021, 'black', '현대', '중형', '무사고', 21000000, 19500000
WHERE NOT EXISTS (SELECT 1 FROM Car_SellList WHERE sCar_Num = '34나5678');
