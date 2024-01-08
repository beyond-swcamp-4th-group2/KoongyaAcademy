# README

# ✏️ **Koongya Academy**
1. [프로젝트 기획](#📄-1-프로젝트-기획)

    1-1. [개요](#1-1-개요)

    1-2. [설계목적 및 효과](#1-2-설계목적-및-효과)

    1-3. [WBS(Work Breakdown Structure)](#1-3-wbswork-breakdown-structure)

    1-4. [요구사항 명세서](#1-4-요구사항-명세서)

2. [개념&논리 모델링](#📌-2-개념논리-모델링)

3. [물리 모델링](#🔍-3-물리-모델링)

4. [Replication Server 구축 현황](#⚙️-4-replication-server-구축-현황)

5. [테스트케이스 정의서](#🔖-5-테스트케이스-정의서)

    5-1. [CRUD Case](#5-1-crud-case)

    5-2. [JOIN Case](#5-2-join-case)

    5-3. [Transaction Case](#5-3-transaction-case)

6. [회고록](#📗-6-회고록)

    6-1. [회의록](#6-1-회의록)

    6-2. [개선 여지](#6-2-개선-여지)

    6-3. [개인적 감상](#6-3-개인적-감상)


---
👥 소우주, 손세림, 신대영, 양지혜, 조예린, 지현근
---

👥 소우주, 손세림, 신대영, 양지혜, 조예린, 지현근

---

## 📄 1. 프로젝트 기획

### 1-1. 개요

  글로벌 업무 역량 강화를 위해 공인어학성적 취득을 바라는 인원이 증가함에 따라 그에 맞는 학원 시스템 고도화의 필요성 또한 대두되고 있다. 기존의 어학학원 시스템에서 조금 더 효율적으로 발전시키고자 한다.

### 1-2. 설계목적 및 효과

  이 시스템의 설계 목적은 공인어학학원의 체계적이고 효율적인 운영 및 관리를 위해 종합적인 솔루션을 제공하는 것이다. 이를 통해 학원은 학생들과의 원활한 소통, 학습 성과의 효과적인 모니터링, 그리고 관리 업무의 효율성을 극대화할 수 있다. 수강생의 개인 정보 및 수강 이력을 중앙에서 효과적으로 관리하여 학사 업무를 간편화해 관리자가 신속하게 조회 및 업데이트 할 수 있다.

  또한, 학생들의 영어 능력을 정확히 파악하고 이를 기반으로 한 레벨 배치고사를 통해 학생들에게 최적화된 어학 강좌를 제공할 수 있다. 학생들은 자신의 능력 수준에 맞는 강좌를 선택하여 학습함으로써 개인화된 학습 경험을 즐길 수 있고 강좌 수강 기간 중 성취도 평가를 통해 본인의  수강이해도 확인이 가능하다. 그에 따른 어려운 부분에 대한 추가 지원 및 필요한 조치를 취해 언제든 학습 목표를 달성할 수 있다.

  특히, 학원은 공인 어학 성적 기준치를 달성할 경우 수강료 환급이라는 혜택을 제공한다. 해당 시스템을 통해 이를 효과적으로 관리할 수 있으며 학생들은 자신의 학습 성과를 실시간으로 확인함으로써 목표를 달성하는 데 동기부여를 얻을 수 있다.

  이러한 설계 목적 및 효과를 통해 학원은 고객인 학생들에게 높은 만족도를 제공하며, 학사 업무 및 관리 업무의 효율성을 높여 전반적인 운영을 최적화할 수 있을 것으로 기대된다.

### 1-3. WBS(Work Breakdown Structure)

[WBS(Work Breakdown Structure)](https://docs.google.com/spreadsheets/d/125BpUohO1kYKRrj6PqLOdRJN6mHNbAyU/edit#gid=1057334268)

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled.png)

### 1-4. 요구사항 명세서

[요구사항명세서](https://docs.google.com/spreadsheets/d/1osO60pgOUC9nGXAfSiQJHdxwqVV4rpn3SHh1lWrW7-s/edit#gid=0)

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%201.png)

## 📌 2. 개념&논리 모델링

- **개념모델링**
    
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%202.png)
    
- **논리모델링(IE 표기법)**
    
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%203.png)
    
    [Koongya Academy](https://www.erdcloud.com/d/KrziAjsk86HevjrzT)
    

- **논리모델링(Barker 표기법)**
    
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%204.png)
    
    [KoongyaAcademy.damx](README%2090456e44faab4013bf4520930090a7ab/KoongyaAcademy.damx)
    


## 🔍 3. 물리 모델링

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%205.png)

<details>
<summary>DDL Query</summary>
<div markdown="1">
    
```sql
    -- CREATE
    CREATE TABLE `attendance`
    (
        `date_id`    DATE NOT NULL COMMENT '날짜코드',
        `att_att_time`    TIME COMMENT '출석시간',
        `att_late_state`    CHAR(1) NOT NULL COMMENT '지각여부',
        `att_late_time`    TIME COMMENT '지각시간',
        `att_leave_state`    CHAR(1) NOT NULL COMMENT '조퇴여부',
        `att_leave_time`    TIME COMMENT '조퇴시간',
        `att_go_state`    CHAR(1) NOT NULL COMMENT '외출여부',
        `att_go_time`    TIME COMMENT '외출시간',
        `att_back_time`    TIME COMMENT '외출복귀시간',
        `att_absent_state`    CHAR(1) NOT NULL COMMENT '결석여부',
        `lec_id`    MEDIUMINT NOT NULL COMMENT '강좌번호',
        `stud_id`    MEDIUMINT NOT NULL COMMENT '학생번호',
     PRIMARY KEY ( `date_id`,`lec_id`,`stud_id` )
    )
     COMMENT = '강좌별출석관리';
    
    CREATE TABLE `book`
    (
        `bk_id`    SMALLINT NOT NULL COMMENT '교재코드',
        `bk_name`    VARCHAR(255) NOT NULL COMMENT '교재명',
        `bk_price`    MEDIUMINT NOT NULL COMMENT '교재가격',
     PRIMARY KEY ( `bk_id` )
    )
     COMMENT = '교재';
    
    CREATE TABLE `cert_exam_score`
    (
        `cert_exam_id`    SMALLINT NOT NULL COMMENT '공인영어발급번호',
        `cert_exam_date`    DATE NOT NULL COMMENT '시험일자',
        `cert_exam_score`    SMALLINT NOT NULL COMMENT '공인영어점수',
        `cert_exam_expire_status`    CHAR(1) NOT NULL COMMENT '만료여부',
        `stud_id`    MEDIUMINT COMMENT '학생번호',
     PRIMARY KEY ( `cert_exam_id` )
    )
     COMMENT = '공인영어성적';
    
    CREATE TABLE `commute`
    (
        `com_info`    VARCHAR(255) NOT NULL COMMENT '출퇴근정보',
        `com_date`    DATE NOT NULL COMMENT '날짜',
        `com_time`    TIME NOT NULL COMMENT '시간',
        `id_no`    MEDIUMINT NOT NULL COMMENT '아이디'
    )
     COMMENT = '출퇴근관리';
    
    CREATE TABLE `department`
    (
        `dept_id`    SMALLINT NOT NULL AUTO_INCREMENT
     COMMENT '부서번호',
        `dept_name`    VARCHAR(255) NOT NULL COMMENT '부서명',
     PRIMARY KEY ( `dept_id` )
    )
     COMMENT = '부서';
    
    CREATE TABLE `exam`
    (
        `exam_id`    SMALLINT NOT NULL AUTO_INCREMENT
     COMMENT '시험코드',
        `exam_type`    VARCHAR(255) NOT NULL COMMENT '시험유형',
        `exam_date`    DATE NOT NULL COMMENT '시험일시',
        `exam_location`    VARCHAR(255) NOT NULL COMMENT '시험장소',
        `lec_id`    MEDIUMINT COMMENT '강좌번호',
     PRIMARY KEY ( `exam_id` )
    )
     COMMENT = '시험';
     
     
    CREATE TABLE `exam_score`
    (
        `exam_score`    SMALLINT NOT NULL COMMENT '시험점수',
        `exam_id`    SMALLINT NOT NULL COMMENT '시험코드',
        `stud_id`    MEDIUMINT NOT NULL COMMENT '학생번호',
     PRIMARY KEY ( `exam_id`,`stud_id` )
    )
     COMMENT = '시험점수';
     
     
    CREATE TABLE `job`
    (
        `job_id`    SMALLINT NOT NULL COMMENT '직급번호',
        `job_name`    VARCHAR(255) NOT NULL COMMENT '직급명',
     PRIMARY KEY ( `job_id` )
    )
     COMMENT = '직급';
    
    CREATE TABLE `lec_record`
    (
        `rec_date`    DATETIME NOT NULL COMMENT '녹화날짜',
        `rec_URL`    VARCHAR(255) NOT NULL COMMENT '녹화영상URL',
        `rec_origin_name`    VARCHAR(255) NOT NULL COMMENT '원본파일명',
        `rec_rename`    VARCHAR(255) COMMENT 'Rename명',
        `lec_id`    MEDIUMINT NOT NULL COMMENT '강좌번호',
     PRIMARY KEY ( `rec_date`,`lec_id` )
    )
     COMMENT = '녹화영상';
    
    CREATE TABLE `lecture`
    (
        `lec_id`    MEDIUMINT NOT NULL COMMENT '강좌번호',
        `lec_name`    VARCHAR(255) NOT NULL COMMENT '강좌명',
        `lec_fee`    MEDIUMINT NOT NULL COMMENT '수강료',
        `lec_capa`    SMALLINT NOT NULL COMMENT '수강정원',
        `bk_id`    SMALLINT COMMENT '교재코드',
        `room_id`    SMALLINT COMMENT '강의실번호',
        `id_no`    MEDIUMINT COMMENT '아이디',
        `level_id`    SMALLINT COMMENT '레벨코드',
     PRIMARY KEY ( `lec_id` )
    )
     COMMENT = '강좌';
    
    CREATE TABLE `lecture_per_student`
    (
        `pay_status`    CHAR(1) NOT NULL COMMENT '결제여부',
        `lec_id`    MEDIUMINT NOT NULL COMMENT '강좌번호',
        `stud_id`    MEDIUMINT NOT NULL COMMENT '학생번호',
     PRIMARY KEY ( `lec_id`,`stud_id` )
    )
     COMMENT = '학생별수강강좌';
    
    CREATE TABLE `level`
    (
        `level_id`    SMALLINT NOT NULL COMMENT '레벨코드',
        `level_reference_score`    SMALLINT NOT NULL COMMENT '레벨기준점수',
        `refund_reference_score`    SMALLINT NOT NULL COMMENT '환급기준점수',
     PRIMARY KEY ( `level_id` )
    )
     COMMENT = '레벨';
    
    CREATE TABLE `mem_info`
    (
        `id_no`    MEDIUMINT NOT NULL AUTO_INCREMENT
     COMMENT '아이디',
        `idcard_no`    SMALLINT COMMENT '출입증카드번호',
        `inst_name`    VARCHAR(255) COMMENT '강사이름',
        `inst_phone`    VARCHAR(255) COMMENT '강사연락처',
        `inst_address`    VARCHAR(255) COMMENT '강사주소',
        `inst_pic`    MEDIUMBLOB COMMENT '강사사진',
        `inst_enroll_date`    DATE COMMENT '강사등록일',
        `inst_resign_date`    DATE COMMENT '강사퇴사일',
        `inst_status`    CHAR(1) COMMENT '강사재직여부',
        `inst_email`    VARCHAR(255) COMMENT '강사이메일',
        `inst_salary`    INT COMMENT '강사급여정보',
        `emp_name`    VARCHAR(255) COMMENT '직원이름',
        `emp_phone`    CHAR(11) COMMENT '직원연락처',
        `emp_address`    VARCHAR(255) COMMENT '직원주소',
        `emp_email`    VARCHAR(255) COMMENT '직원이메일',
        `emp_pic`    MEDIUMBLOB COMMENT '직원사진',
        `emp_enroll_date`    DATE COMMENT '직원등록일',
        `emp_resign_date`    DATE COMMENT '직원퇴사일',
        `emp_status`    CHAR(1) COMMENT '직원재직여부',
        `emp_salary`    INT COMMENT '직원급여정보',
        `job_id`    SMALLINT COMMENT '직급번호',
        `dept_id`    SMALLINT COMMENT '부서번호',
     PRIMARY KEY ( `id_no` )
    )
     COMMENT = '구성원정보';
    
    CREATE TABLE `pay_history`
    (
        `pay_id`    MEDIUMINT NOT NULL AUTO_INCREMENT
     COMMENT '결제번호',
        `pay_date`    DATETIME NOT NULL COMMENT '결제일자',
        `stud_id`    MEDIUMINT COMMENT '학생번호',
     PRIMARY KEY ( `pay_id` )
    )
     COMMENT = '결제기록';
    
    CREATE TABLE `placement_exam`
    (
        `placement_exam_id`    SMALLINT NOT NULL COMMENT '배치고사수험번호',
        `exam_type`    VARCHAR(255) NOT NULL COMMENT '시험종류',
        `placement_exam_score`    SMALLINT NOT NULL COMMENT '배치고사점수',
        `stud_id`    MEDIUMINT COMMENT '학생번호',
     PRIMARY KEY ( `placement_exam_id` )
    )
     COMMENT = '배치고사';
    
    CREATE TABLE `return`
    (
        `return_id`    SMALLINT NOT NULL AUTO_INCREMENT
     COMMENT '환급번호',
        `return_status`    CHAR(1) NOT NULL COMMENT '환급처리여부',
        `lec_id`    MEDIUMINT COMMENT '강좌번호',
        `stud_id`    MEDIUMINT COMMENT '학생번호',
     PRIMARY KEY ( `return_id` )
    )
     COMMENT = '환급';
    
     RENAME TABLE `return` TO refund;
     
     
    CREATE TABLE `room`
    (
        `room_id`    SMALLINT NOT NULL COMMENT '강의실번호',
        `room_capacity`    SMALLINT NOT NULL COMMENT '수용인원',
     PRIMARY KEY ( `room_id` )
    )
     COMMENT = '강의실';
    
    CREATE TABLE `student`
    (
        `stud_id`    MEDIUMINT NOT NULL AUTO_INCREMENT
     COMMENT '학생번호',
        `stud_name`    VARCHAR(255) NOT NULL COMMENT '학생이름',
        `stud_birth`    DATE NOT NULL COMMENT '학생생년월일',
        `stud_phone`    CHAR(11) NOT NULL COMMENT '학생연락처',
        `stud_address`    VARCHAR(255) COMMENT '학생주소',
        `stud_pic`    MEDIUMBLOB COMMENT '학생사진',
        `stud_enroll_date`    DATE NOT NULL COMMENT '학생등록일',
        `stud_resign_date`    DATE COMMENT '학생퇴원일',
        `stud_status`    CHAR(1) NOT NULL COMMENT '학생재원여부',
        `stud_email`    VARCHAR(255) NOT NULL COMMENT '학생이메일',
        `stud_account`    VARCHAR(255) NOT NULL COMMENT '학생계좌번호',
        `level_id`    SMALLINT COMMENT '레벨코드',
     PRIMARY KEY ( `stud_id` )
    )
     COMMENT = '학생';
     
    
    -- ALTER
    ALTER TABLE `attendance`
     ADD CONSTRAINT `attendance_FK` FOREIGN KEY ( `lec_id` )
     REFERENCES `lecture` (`lec_id` );
    
    ALTER TABLE `attendance`
     ADD CONSTRAINT `attendance_FK1` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `cert_exam_score`
     ADD CONSTRAINT `cert_exam_score_FK` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `commute`
     ADD CONSTRAINT `commute_FK` FOREIGN KEY ( `id_no` )
     REFERENCES `mem_info` (`id_no` );
    
    ALTER TABLE `exam`
     ADD CONSTRAINT `exam_FK` FOREIGN KEY ( `lec_id` )
     REFERENCES `lecture` (`lec_id` );
    
    ALTER TABLE `exam_score`
     ADD CONSTRAINT `exam_score_FK` FOREIGN KEY ( `exam_id` )
     REFERENCES `exam` (`exam_id` );
    
    ALTER TABLE `exam_score`
     ADD CONSTRAINT `exam_score_FK1` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `lec_record`
     ADD CONSTRAINT `lec_record_FK` FOREIGN KEY ( `lec_id` )
     REFERENCES `lecture` (`lec_id` );
    
    ALTER TABLE `lecture`
     ADD CONSTRAINT `lecture_FK` FOREIGN KEY ( `level_id` )
     REFERENCES `level` (`level_id` );
    
    ALTER TABLE `lecture`
     ADD CONSTRAINT `lecture_FK1` FOREIGN KEY ( `id_no` )
     REFERENCES `mem_info` (`id_no` );
    
    ALTER TABLE `lecture`
     ADD CONSTRAINT `lecture_FK2` FOREIGN KEY ( `room_id` )
     REFERENCES `room` (`room_id` );
    
    ALTER TABLE `lecture`
     ADD CONSTRAINT `lecture_FK3` FOREIGN KEY ( `bk_id` )
     REFERENCES `book` (`bk_id` );
    
    ALTER TABLE `lecture_per_student`
     ADD CONSTRAINT `lecture_per_student_FK` FOREIGN KEY ( `lec_id` )
     REFERENCES `lecture` (`lec_id` );
    
    ALTER TABLE `lecture_per_student`
     ADD CONSTRAINT `lecture_per_student_FK1` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `mem_info`
     ADD CONSTRAINT `mem_info_FK` FOREIGN KEY ( `job_id` )
     REFERENCES `job` (`job_id` );
    
    ALTER TABLE `mem_info`
     ADD CONSTRAINT `mem_info_FK1` FOREIGN KEY ( `dept_id` )
     REFERENCES `department` (`dept_id` );
    
    ALTER TABLE `pay_history`
     ADD CONSTRAINT `pay_history_FK` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `placement_exam`
     ADD CONSTRAINT `placement_exam_FK` FOREIGN KEY ( `stud_id` )
     REFERENCES `student` (`stud_id` );
    
    ALTER TABLE `refund`
     ADD CONSTRAINT `return_FK` FOREIGN KEY ( `lec_id`,`stud_id` )
     REFERENCES `lecture_per_student` (`lec_id`,`stud_id` );
    
    ALTER TABLE `student`
     ADD CONSTRAINT `student_FK` FOREIGN KEY ( `level_id` )
     REFERENCES `level` (`level_id` );/* 2024-01-05 08:55:32 [58 ms] */
```
</div>
</details>
    

 <details>
<summary>DML Query</summary>
<div markdown="1">   
    
```sql
    INSERT INTO `level` (`level_id`, `level_reference_score`, `refund_reference_score`)
    VALUES
    (1, 100, 50),
    (2, 200, 100),
    (3, 300, 150),
    (4, 400, 200),
    (5, 500, 250),
    (6, 600, 300),
    (7, 700, 350),
    (8, 800, 400),
    (9, 900, 450),
    (10, 1000, 500),
    (11, 1100, 550),
    (12, 1200, 600),
    (13, 1300, 650),
    (14, 1400, 700),
    (15, 1500, 750);
    
    INSERT INTO `job` (`job_id`, `job_name`)
    VALUES
    (1, 'Manager'),
    (2, 'Supervisor'),
    (3, 'Team Lead'),
    (4, 'Developer'),
    (5, 'Designer'),
    (6, 'Analyst'),
    (7, 'Coordinator'),
    (8, 'Specialist'),
    (9, 'Assistant'),
    (10, 'Engineer'),
    (11, 'Consultant'),
    (12, 'Administrator'),
    (13, 'Technician'),
    (14, 'Trainer'),
    (15, 'Support Staff');
    
    INSERT INTO `student` (`stud_id`, `stud_name`, `stud_birth`, `stud_phone`, `stud_address`, `stud_pic`, `stud_enroll_date`, `stud_resign_date`, `stud_status`, `stud_email`, `stud_account`, `level_id`)
    VALUES
    (1, 'Student1', '2000-01-01', '12345678901', 'Address1', NULL, '2022-01-01', NULL, 'Y', 'student1@example.com', 'Account1', 13),
    (2, 'Student2', '2000-02-02', '12345678902', 'Address2', NULL, '2022-02-01', NULL, 'Y', 'student2@example.com', 'Account2', 7),
    (3, 'Student3', '2000-03-03', '12345678903', 'Address3', NULL, '2022-03-01', NULL, 'Y', 'student3@example.com', 'Account3', 8),
    (4, 'Student4', '2000-04-04', '12345678904', 'Address4', NULL, '2022-04-01', NULL, 'Y', 'student4@example.com', 'Account4', 7),
    (5, 'Student5', '2000-05-05', '12345678905', 'Address5', NULL, '2022-05-01', NULL, 'N', 'student5@example.com', 'Account5', 13),
    (6, 'Student6', '2000-06-06', '12345678906', 'Address6', NULL, '2022-06-01', NULL, 'N', 'student6@example.com', 'Account6', 1),
    (7, 'Student7', '2000-07-07', '12345678907', 'Address7', NULL, '2022-07-01', NULL, 'Y', 'student7@example.com', 'Account7', 1),
    (8, 'Student8', '2000-08-08', '12345678908', 'Address8', NULL, '2022-08-01', NULL, 'Y', 'student8@example.com', 'Account8', 8),
    (9, 'Student9', '2000-09-09', '12345678909', 'Address9', NULL, '2022-09-01', NULL, 'Y', 'student9@example.com', 'Account9', 6),
    (10, 'Student10', '2000-10-10', '12345678910', 'Address10', NULL, '2022-10-01', NULL, 'Y', 'student10@example.com', 'Account10', 9),
    (11, 'Student11', '2000-11-11', '12345678911', 'Address11', NULL, '2022-11-01',  NULL, 'Y', 'student11@example.com', 'Account11', 4),
    (12, 'Student12', '2000-12-12', '12345678912', 'Address12', NULL, '2022-12-01', NULL, 'Y', 'student12@example.com', 'Account12', 4),
    (13, 'Student13', '2001-01-01', '12345678913', 'Address13', NULL, '2023-01-01', NULL, 'Y', 'student13@example.com', 'Account13', 9),
    (14, 'Student14', '2001-02-02', '12345678914', 'Address14', NULL, '2023-02-01', NULL, 'Y', 'student14@example.com', 'Account14', 7),
    (15, 'Student15', '2001-03-03', '12345678915', 'Address15', NULL, '2023-03-01', NULL, 'Y', 'student15@example.com', 'Account15', 1);
    
    INSERT INTO `room` (`room_id`, `room_capacity`) VALUES
    (1, 30),
    (2, 25),
    (3, 40),
    (4, 35),
    (5, 20),
    (6, 45),
    (7, 28),
    (8, 32),
    (9, 18),
    (10, 50),
    (11, 22),
    (12, 38),
    (13, 27),
    (14, 33),
    (15, 42);
    
    INSERT INTO `book` (`bk_id`, `bk_name`, `bk_price`) VALUES
    (1, '책1', 20000),
    (2, '책2', 25000),
    (3, '책3', 18000),
    (4, '책4', 30000),
    (5, '책5', 22000),
    (6, '책6', 27000),
    (7, '책7', 19000),
    (8, '책8', 32000),
    (9, '책9', 24000),
    (10, '책10', 28000),
    (11, '책11', 21000),
    (12, '책12', 35000),
    (13, '책13', 26000),
    (14, '책14', 23000),
    (15, '책15', 29000);
    
    INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
    (1, '영업부'),
    (2, '인사부'),
    (3, '개발부'),
    (4, '재무부'),
    (5, '마케팅부'),
    (6, '생산부'),
    (7, '기술부'),
    (8, '경영지원부'),
    (9, '품질관리부'),
    (10, '구매부'),
    (11, '디자인부'),
    (12, '서비스부'),
    (13, '연구부'),
    (14, '교육부'),
    (15, '기획부');
    
    INSERT INTO cert_exam_score (cert_exam_id, cert_exam_date, cert_exam_score, cert_exam_expire_status, stud_id)
    VALUES
    (1, '2022-01-01', 80, 'N', 2),
    (2, '2022-02-01', 75, 'N', 1),
    (3, '2022-03-01', 90, 'Y', 3),
    (4, '2022-04-01', 85, 'N', 13),
    (5, '2022-05-01', 78, 'N', 4),
    (6, '2022-06-01', 92, 'Y', 15),
    (7, '2022-07-01', 88, 'N', 6),
    (8, '2022-08-01', 76, 'N', 7),
    (9, '2022-09-01', 94, 'Y', 8),
    (10, '2022-10-01', 82, 'N', 10),
    (11, '2022-11-01', 89, 'N', 6),
    (12, '2022-12-01', 93, 'Y', 8),
    (13, '2023-01-01', 79, 'N', 11),
    (14, '2023-02-01', 87, 'N', 7),
    (15, '2023-03-01', 91, 'Y', 7);
    
    INSERT INTO placement_exam (placement_exam_id, exam_type, placement_exam_score, stud_id)
    VALUES
    (1, '수학능력시험', 75, 5),
    (2, '영어능력시험', 80, 7),
    (3, '과학능력시험', 88, 4),
    (4, '사회능력시험', 92, 4),
    (5, '한국사능력시험', 78, 2),
    (6, '도덕논술능력시험', 85, 1),
    (7, '수학논술능력시험', 95, 15),
    (8, '한국어논술능력시험', 87, 7),
    (9, '영어논술능력시험', 94, 6),
    (10, '과학논술능력시험', 89, 6),
    (11, '사회논술능력시험', 83, 5),
    (12, '한문능력시험', 91, 4),
    (13, '수학영재능력시험', 76, 3),
    (14, '영어영재능력시험', 82, 2),
    (15, '과학영재능력시험', 90, 13);
    
    INSERT INTO pay_history (pay_id, pay_date, stud_id)
    VALUES
    (1, '2022-01-01 10:00:00', 9),
    (2, '2022-02-01 11:30:00', 1),
    (3, '2022-03-01 09:45:00', 2),
    (4, '2022-04-01 14:20:00', 8),
    (5, '2022-05-01 13:15:00', 1),
    (6, '2022-06-01 12:30:00', 3),
    (7, '2022-07-01 16:45:00', 14),
    (8, '2022-08-01 10:10:00', 3),
    (9, '2022-09-01 15:00:00', 9),
    (10, '2022-10-01 14:45:00', 6),
    (11, '2022-11-01 11:05:00', 5),
    (12, '2022-12-01 13:40:00', 7),
    (13, '2023-01-01 09:30:00', 15),
    (14, '2023-02-01 12:15:00', 12),
    (15, '2023-03-01 14:50:00', 3);
    
    INSERT INTO `mem_info` (
        `idcard_no`,
        `inst_name`,
        `inst_phone`,
        `inst_address`,
        `inst_pic`,
        `inst_enroll_date`,
        `inst_resign_date`,
        `inst_status`,
        `inst_email`,
        `inst_salary`,
        `emp_name`,
        `emp_phone`,
        `emp_address`,
        `emp_email`,
        `emp_pic`,
        `emp_enroll_date`,
        `emp_resign_date`,
        `emp_status`,
        `emp_salary`,
        `job_id`,
        `dept_id`
    )  VALUES
    (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '원다혜', '01098765432', '서울시 강서구', 'emp1@example.com', NULL, '2023-02-01', '2023-04-30', 'N', 45000, 1, 3),
    (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '황지영', '01033334444', '서울시 강동구', 'emp2@example.com', NULL, '2023-03-01', NULL, 'Y', 55000, 3, 5),
    (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '서지영', '01077778888', '서울시 강서구', 'emp3@example.com', NULL, '2023-04-01', '2023-06-30', 'Y', 60000, 4, 4),
    (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '윤종길', '01012123434', '서울시 강동구', 'emp4@example.com', NULL, '2023-05-01', NULL, 'N', 70000, 11, 10),
    (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '김종국', '01056567878', '서울시 강서구', 'emp5@example.com', NULL, '2023-06-01', '2023-08-31', 'N', 80000, 2, 15),
    (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '손재구', '01034345656', '서울시 강동구', 'emp6@example.com', NULL, '2023-07-01', NULL, 'Y', 90000, 6, 9),
    (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '전지성', '01012123434', '서울시 강서구', 'emp7@example.com', NULL, '2023-08-01', '2023-10-31', 'N', 100000, 9, 13),
    (8, '서동우', '01045456767', '서울시 강북구', NULL, '2023-08-01', NULL, 'N', 'inst8@example.com', 120000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (9, '송지영', '01012123434', '서울시 강남구', NULL, '2023-09-01', '2023-11-15', 'Y', 'inst9@example.com', 130000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (10, '강도현', '01034345656', '서울시 강북구', NULL, '2023-10-01', NULL, 'N', 'inst10@example.com', 140000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (11, '유수진', '01056567878', '서울시 강남구', NULL, '2023-11-01', '2023-01-15', 'Y', 'inst11@example.com', 150000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (12, '김태호', '01023234545', '서울시 강북구', NULL, '2023-12-01', NULL, 'Y', 'inst12@example.com', 160000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (13, '백가영', '01090901212', '서울시 강남구', NULL, '2024-01-01', '2024-03-15', 'Y', 'inst13@example.com', 170000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (14, '장승우', '01078789090', '서울시 강북구', NULL, '2024-02-01', NULL, 'N', 'inst14@example.com', 180000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    (15, '조예린', '01045456767', '서울시 강남구', NULL, '2024-03-01', '2024-05-15', 'N', 'inst15@example.com', 190000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
    
    INSERT INTO `lecture` (`lec_id`, `lec_name`, `lec_fee`, `lec_capa`, `bk_id`, `room_id`, `id_no`, `level_id`)
    VALUES(1, 'LC만점반', 400000, 30, 13, 3, 14, 15),
    (2, 'RC_파트1_마스터', 200000, 80, 2, 2, 1, 4),
    (3, 'RC_파트2_마스터', 230000, 70, 3, 9, 2, 4),
    (4, 'RC_파트3_마스터', 260000, 80, 4, 15, 3, 5),
    (5, 'RC_파트4_마스터', 290000, 70, 5, 12, 4, 6),
    (6, 'RC_파트5_마스터', 320000, 80, 6, 1, 5, 7),
    (7, 'RC_파트6_마스터', 350000, 70, 7, 4, 6, 8),
    (8, 'RC_파트7_마스터', 380000, 80, 8, 8, 7, 9),
    (9, 'RC_파트8_마스터', 410000, 90, 9, 11, 8, 10),
    (10, 'RC_파트9_마스터', 440000, 90, 10, 9, 11, 7),
    (11, 'RC_파트10_마스터', 470000, 80, 7, 10, 12, 6),
    (12, 'RC_파트11_마스터', 500000, 80, 5, 10, 13, 13),
    (13, '고득점을_위한_디테일', 600000, 30, 14, 13, 7, 14),
    (14, 'LC기초반', 150000, 30, 14, 13, 14, 1),
    (15, 'RC기초반', 150000, 30, 15, 6, 15, 2);
    
    --attendance
    INSERT INTO `attendance` (`date_id`, `att_att_time`, `att_late_state`, `att_late_time`, `att_leave_state`, `att_leave_time`, `att_go_state`, `att_go_time`, `att_back_time`, `att_absent_state`, `lec_id`, `stud_id`)  
    VALUES
    ('2023-01-01', '09:00:00', 'N', '00:00:00', 'N', '00:04:00', 'N', '00:00:00', '00:00:00', 'N', 3, 1),
    ('2023-01-02', '09:10:00', 'Y', '00:05:00', 'N', '00:04:00', 'Y', '12:00:00', '13:00:00', 'Y',2, 5),
    ('2023-01-03', '09:35:00', 'Y', '00:00:00', 'Y', '00:03:00', 'Y', '00:00:00', '00:00:00', 'N', 4, 3),
    ('2023-01-04', '10:10:00', 'Y', '00:00:00', 'N', '00:00:00', 'N', '12:00:00', '13:00:00', 'Y', 3, 3),
    ('2023-01-05', '11:10:00', 'Y', '00:05:00', 'Y', '00:03:00', 'Y', '00:00:00', '13:00:00', 'N',8, 7),
    ('2023-01-06', '12:20:00', 'N', '00:05:00', 'Y', '00:03:00', 'N', '00:00:00', '00:00:00', 'N', 6, 10),
    ('2023-01-07', '15:40:00', 'Y', '00:00:00', 'Y', '00:00:00', 'Y', '12:00:00', '13:00:00', 'Y', 5, 8),
    ('2023-01-08', '18:10:00', 'Y', '00:00:00', 'Y', '00:00:00', 'Y', '00:00:00', '13:00:00', 'N', 3, 6),
    ('2023-01-09', '18:10:00', 'N', '00:05:00', 'N', '00:03:00', 'N', '12:00:00', '00:00:00', 'Y', 8, 5),
    ('2023-01-10', '15:40:00', 'N', '00:00:00', 'N', '00:00:00', 'Y', '12:00:00', '13:00:00', 'N', 4, 15),
    ('2023-01-11', '09:30:00', 'N', '00:05:00', 'N', '00:00:00', 'Y', '00:00:00', '13:00:00', 'N', 14, 7),
    ('2023-01-12', '09:30:00', 'N', '00:00:00', 'Y', '00:03:00', 'N', '00:00:00', '00:00:00', 'Y', 3, 2),
    ('2023-01-13', '09:30:00', 'N', '00:05:00', 'Y', '00:00:00', 'Y', '12:00:00', '13:00:00', 'N', 9, 5),
    ('2023-01-14', '09:30:00', 'Y', '00:05:00', 'N', '00:00:00', 'Y', '12:00:00', '00:00:00', 'N', 6, 3),
    ('2023-01-15', '09:50:00', 'Y', '00:05:00', 'N', '00:03:00', 'Y', '00:00:00', '13:00:00', 'Y', 2, 7);
    
    INSERT INTO `commute` (`com_info`, `com_date`, `com_time`, `id_no`)
    VALUES
    ('출근', '2023-01-01', '09:00:00', 5),
    ('퇴근', '2023-01-01', '18:00:00', 4),
    ('출근', '2023-01-07', '09:00:00', 13),
    ('퇴근', '2023-01-08', '18:00:00', 2),
    ('퇴근', '2023-01-08', '18:00:00',7),
    ('출근', '2023-01-08', '09:00:00',6),
    ('출근', '2023-01-01', '09:00:00',10),
    ('퇴근', '2023-01-07', '18:00:00',1),
    ('퇴근', '2023-01-06', '18:00:00',4),
    ('퇴근', '2023-01-06', '18:00:00', 3),
    ('퇴근', '2023-01-06', '18:00:00', 3),
    ('출근', '2023-01-06', '09:00:00', 2),
    ('출근', '2023-01-01', '09:00:00', 9),
    ('출근', '2023-01-01', '09:00:00', 12),
    ('퇴근', '2023-01-01', '18:00:00', 15);
    
    -- !
    INSERT INTO `lec_record` (`rec_date`, `rec_URL`, `rec_origin_name`, `rec_rename`, `lec_id`)
    VALUES
    ('2023-01-01 10:00:02', 'http://lec_video1', 'lec_video1.mp4', 'lec_video1_rename.mp4', 4),
    ('2023-01-02 11:00:00', 'http://lec_video2', 'lec_video2.mp4', 'lec_video2_rename.mp4', 4),
    ('2023-01-01 10:10:00', 'http://lec_video3', 'lec_video3.mp4', 'lec_video3_rename.mp4', 8),
    ('2023-01-02 09:00:00', 'http://lec_video4', 'lec_video4.mp4', 'lec_video4_rename.mp4', 6),
    ('2023-01-01 10:00:00', 'http://lec_video5', 'lec_video5.mp4', 'lec_video5_rename.mp4', 11),
    ('2023-01-07 11:00:00', 'http://lec_video6', 'lec_video6.mp4', 'lec_video6_rename.mp4', 12),
    ('2023-01-07 09:00:00', 'http://lec_video7', 'lec_video7.mp4', 'lec_video7_rename.mp4', 9),
    ('2023-01-07 11:00:00', 'http://lec_video8', 'lec_video8.mp4', 'lec_video8_rename.mp4', 7),
    ('2023-01-01 10:00:00', 'http://lec_video9', 'lec_video9.mp4', 'lec_video9_rename.mp4', 4),
    ('2023-01-02 09:00:00', 'http://lec_video10', 'lec_video10.mp4', 'lec_video10_rename.mp4', 3),
    ('2023-01-08 10:00:00', 'http://lec_video11', 'lec_video11.mp4', 'lec_video11_rename.mp4', 4),
    ('2023-01-08 11:00:00', 'http://lec_video12', 'lec_video12.mp4', 'lec_video12_rename.mp4', 3),
    ('2023-01-01 09:00:00', 'http://lec_video13', 'lec_video13.mp4', 'lec_video13_rename.mp4', 13),
    ('2023-01-02 11:00:00', 'http://lec_video14', 'lec_video14.mp4', 'lec_video14_rename.mp4', 9),
    ('2023-01-09 09:00:00', 'http://lec_video15', 'lec_video15.mp4', 'lec_video15_rename.mp4', 4);
    
    INSERT INTO `lecture_per_student` (`stud_id`, `lec_id`, `pay_status`) VALUES
    (1, 3, 'Y'),
    (4, 5, 'N'),
    (5, 11, 'Y'),
    (15, 3, 'N'),
    (3, 5, 'Y'),
    (4, 2, 'N'),
    (8, 9, 'Y'),
    (4, 13, 'N'),
    (4, 1, 'Y'),
    (6, 1, 'N'),
    (7, 1, 'Y'),
    (12, 4, 'N'),
    (9, 15, 'Y'),
    (5, 6, 'N'),
    (7, 3, 'Y');
    
    INSERT INTO `refund` (`return_id`,`return_status`, `stud_id`, `lec_id`) VALUES
    (null, 'N', 1, 3),
    (null, 'Y', 4, 5),
    (null, 'N', 5, 11),
    (null, 'Y', 15, 3),
    (null, 'N', 3, 5),
    (null, 'Y', 4, 2),
    (null, 'N', 8, 9),
    (null, 'Y', 4, 13),
    (null, 'N', 4, 1),
    (null, 'Y', 6, 1),
    (null, 'N', 7, 1),
    (null, 'Y', 12, 4),
    (null, 'N', 9, 15),
    (null, 'Y', 5, 6),
    (null, 'N', 7, 3);
    
    INSERT INTO exam (exam_id, exam_type, exam_date, exam_location, lec_id)
    VALUES(1, '지름길모의고사', CAST('2023-04-17' AS DATE), '고사장1', 14),
    (2, '필승모의고사', CAST('2023-05-02' AS DATE), '고사장3', 15),
    (3, '지름길모의고사', CAST('2023-05-17' AS DATE), '고사장5', 2),
    (4, '합격모의고사', CAST('2023-06-02' AS DATE), '고사장2', 3),
    (5, '필승모의고사', CAST('2023-06-17' AS DATE), '고사장3', 4),
    (6, '합격모의고사', CAST('2023-07-02' AS DATE), '고사장1', 5),
    (7, '합격모의고사', CAST('2023-07-17' AS DATE), '고사장4', 6),
    (8, '지름길모의고사', CAST('2023-08-02' AS DATE), '고사장5', 7),
    (9, '필승모의고사', CAST('2023-08-17' AS DATE), '고사장2', 8),
    (10, '지름길모의고사', CAST('2023-09-02' AS DATE), '고사장4', 9),
    (11, '필승모의고사', CAST('2023-09-17' AS DATE), '고사장5', 10),
    (12, '합격모의고사', CAST('2023-10-02' AS DATE), '고사장1', 11),
    (13, '지름길모의고사', CAST('2023-10-17' AS DATE), '고사장2', 12),
    (14, '합격모의고사', CAST('2023-11-02' AS DATE), '고사장3', 1),
    (15, '필승모의고사', CAST('2023-11-17' AS DATE), '고사장4', 13);
    
    INSERT INTO exam_score (exam_score, exam_id, stud_id)
    VALUES(48, 5, 12),
    (52, 6, 3),
    (60, 3, 8),
    (32, 14, 6),
    (83, 1, 7),
    (90, 3, 15),
    (73, 9, 4),
    (69, 5, 14),
    (93, 13, 10),
    (86, 9, 1),
    (77, 1, 2),
    (59, 13, 5),
    (65, 11, 9),
    (97, 13, 11),
    (63, 5, 13);
```
</div>
</details>
    

## ⚙️ 4. Replication Server 구축 현황

### Ubuntu 20.04 / MariaDB 15.1

> Master status
> 

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%206.png)

> Master IP: 192.168.0.50
> 

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%207.png)

> Slave status
> 

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%208.png)

![Linux Server Proof.gif](README%2090456e44faab4013bf4520930090a7ab/Linux_Server_Proof.gif)

![notio_replication.gif](README%2090456e44faab4013bf4520930090a7ab/notio_replication.gif)

## 🔖 5. 테스트케이스 정의서

[테스트케이스 정의서](https://docs.google.com/spreadsheets/d/1qcAa6c_0MqGflC10ehZl9Xgtp1THU9ZJ3mJ6bYfTiaI/edit#gid=0)

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%209.png)

<details>
<summary> 5-1. CRUD Case</summary>
<div markdown="1">

<details>
<summary>Create</summary>
<div markdown="1">

- Creating table case
        
![Linux Create Table.gif](README%2090456e44faab4013bf4520930090a7ab/Linux_Create_Table.gif)

</div>
</details>
        
<details>
<summary>Read</summary>
<div markdown="1">    

<details>
<summary>TEST CASE: FR-004</summary>
<div markdown="1">  
        
```sql
-- FR-004. 아이디를 통해 직원 정보 모두 조회
-- 구성원정보 아이디를 통해 조예린 구성원이 직원이면 직원정보, 강사면 강사정보를 모두 출력할 수 있다.
        
SELECT
       a.inst_address
     , a.inst_email
     , a.inst_enroll_date
     , a.inst_name
     , a.inst_phone
     , a.inst_pic
     , a.inst_resign_date
     , a.inst_salary
     , a.inst_status
  FROM mem_info a
 WHERE a.dept_id IS NULL
   AND (a.emp_name = '조예린' OR a.inst_name = '조예린')
UNION
SELECT
       a.emp_address
     , a.emp_email
     , a.emp_enroll_date
     , a.emp_name
     , a.emp_phone
     , a.emp_pic
     , a.emp_resign_date
     , a.emp_salary
     , a.emp_status
  FROM mem_info a
 WHERE a.dept_id IS NOT NULL
   AND (a.emp_name = '조예린' OR a.inst_name = '조예린');
```
        
![ezgif.com-video-to-gif-converter (5).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(5).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-006</summary>
<div markdown="1">
        
```sql
-- FR-006. 구성원 정보에서 강사 정보 추출
-- inst_name 혹은 inst_phone의 데이터 존재 유무를 통해
-- mem_info 테이블에서 강사의 정보만 조회 할 수 있다.
        
SELECT
       id_no
     , idcard_no
     , inst_name
     , inst_phone
     , inst_address
     , inst_pic
     , inst_enroll_date
     , inst_resign_date
     , inst_status
     , inst_email
     , inst_salary
  FROM mem_info
 WHERE inst_name IS NOT NULL;
```
        
![fr06.gif](README%2090456e44faab4013bf4520930090a7ab/fr06.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-007</summary>
<div markdown="1">
        
```sql
-- FR-007. 강사의 재직 여부 조회
-- inst_status를 기준으로 재직 중인 강사와 퇴사한 강사의 정보를 따로 조회할 수 있다.
        
-- 현재 재직 중인 강사 조회하기
SELECT
       id_no
     , idcard_no
     , inst_name
     , inst_phone
     , inst_address
     , inst_pic
     , inst_status
     , inst_salary
  FROM mem_info
 WHERE inst_status = 'Y';
        
-- 퇴사한 강사 조회하기
SELECT
       id_no
     , idcard_no
     , inst_name
     , inst_phone
     , inst_address
     , inst_pic
     , inst_status
     , inst_salary
  FROM mem_info
 WHERE inst_status = 'N';
```
        
![fr07.gif](README%2090456e44faab4013bf4520930090a7ab/fr07.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-011</summary>
<div markdown="1">
        
```sql
-- FR-11. 교재 테이블에서 교재정보 검색
-- 교재테이블에서 교재 정보를 조회할 수 있다.
        
SELECT
         bk_id
       , bk_name
       , bk_price
  FROM book;
```
        
![FR-011_양지혜.gif](README%2090456e44faab4013bf4520930090a7ab/FR-011_%25EC%2596%2591%25EC%25A7%2580%25ED%2598%259C.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-014</summary>
<div markdown="1">     
        
```sql
-- FR-014. 등록된 학생들의 개인정보 조회
-- 학생 테이블에 등록된 학생의 개인정보를 모두 조회할 수 있다.
        
SELECT
       stud_name as 학생이름
     , stud_birth as 학생생년월일
     , stud_enroll_date as 등록일
  FROM student
 WHERE stud_name = 'Student1';
```
        
![ezgif.com-video-to-gif-converter (9).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(9).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-015</summary>
<div markdown="1"> 
        
```sql
-- FR-015. 학생 등록일, 재원여부 조회
-- 학생 테이블을 통해 학생등록일, 학생재원여부를 조회할 수 있다.
        
SELECT
       a.stud_enroll_date
     , a.stud_status
  FROM student a;
```
        
![ezgif.com-video-to-gif-converter (7).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(7).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-018</summary>
<div markdown="1"> 
        
```sql
-- FR-018. 레벨 구분 조회
-- 레벨별 기준 점수와 환급 기준 점수를 조회할 수 있다.
        
SELECT
       level_id
     , level_reference_score
     , refund_reference_score
  FROM level;
```
        
![fr18.gif](README%2090456e44faab4013bf4520930090a7ab/fr18.gif)

</div>
</details>

</div>
</details>

<details>
<summary>Update</summary>
<div markdown="1">         
    
```sql
-- 책4의 가격 변동사항 업데이트
    
SELECT * FROM book;
    
UPDATE book
   SET bk_price = 28000
 WHERE bk_id = 4;
```
    
![update.gif](README%2090456e44faab4013bf4520930090a7ab/update.gif)

</div>
</details>

<details>
<summary>Delete</summary>
<div markdown="1">  
    
- Delete a row of a table
        
![delete-ezgif.com-video-to-gif-converter.gif](README%2090456e44faab4013bf4520930090a7ab/delete-ezgif.com-video-to-gif-converter.gif)
        
![15delete-ezgif.com-video-to-gif-converter.gif](README%2090456e44faab4013bf4520930090a7ab/15delete-ezgif.com-video-to-gif-converter.gif)

</div>
</details>

</div>
</details>

 <details>
<summary> 5-2. JOIN Case</summary>
<div markdown="1">        

<details>
<summary>TEST CASE: FR-001</summary>
<div markdown="1"> 
    
```sql
-- FR-001. 재직 중인 직원들의 직급 조회 
-- 직급 테이블에서 재직중인 직원을 모두 조회할 수 있다.
    
SELECT
        a.emp_name AS '학생명'
      , b.job_name AS '직급명'
  FROM mem_info a
  JOIN job b ON (a.job_id = b.job_id)
 WHERE a.emp_status = 'Y';
```
    
![ezgif.com-video-to-gif-converter.gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-002</summary>
<div markdown="1"> 
    
```sql
-- FR-002. 부서에 재직 중인 직원 조회
-- 재직중인 직원의 부서명을 모두 조회할 수 있다.
    
SELECT
         a.dept_name
       , b.emp_name
       , b.emp_status
  FROM department a
  JOIN mem_info b ON (a.dept_id=b.dept_id)
 WHERE b.emp_status = 'Y';
```
    
![FR-002_양지혜.gif](README%2090456e44faab4013bf4520930090a7ab/FR-002_%25EC%2596%2591%25EC%25A7%2580%25ED%2598%259C.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-003</summary>
<div markdown="1"> 
    
```sql
-- FR-003. 직원의 출근 날짜, 시간 조회
-- 직원테이블 아이디를 통해 출퇴근 관리테이블로 접근하여
-- '윤종길'의 출근 날짜와 시간을 조회할 수 있다.
    
SELECT
       b.com_time
     , b.com_date
     , b.com_info
  FROM mem_info a
  JOIN commute b ON (a.id_no = b.id_no)
 WHERE a.emp_name = '윤종길'
   AND b.com_info = '퇴근';
```
    
![ezgif.com-video-to-gif-converter (6).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(6).gif)
    
</div>
</details>

<details>
<summary>TEST CASE: FR-005</summary>
<div markdown="1">

```sql
-- FR-005. 재직 중인 직원의 급여, 직급, 부서 조회
-- 재직 중인 직원의 급여, 직급, 부서를 조회할 수 있다.
    
SELECT
         a.emp_name
       , a.emp_status
       , a.emp_salary
       , b.job_name
       , c.dept_name
  FROM mem_info a
  JOIN job b ON (a.job_id=b.job_id)
  JOIN department c ON (a.dept_id=c.dept_id)
 WHERE a.emp_status = 'Y';
```
    
![FR-005_양지혜.gif](README%2090456e44faab4013bf4520930090a7ab/FR-005_%25EC%2596%2591%25EC%25A7%2580%25ED%2598%259C.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-008</summary>
<div markdown="1">
    
```sql
-- FR-008. 시험 종류 조회
-- 학원에서 자체적으로 시행되는 시험의 종류를 조회하고
-- lec_id 를 통하여 그 시험에 해당하는 강좌를 조회할 수 있다.
    
SELECT
       a.exam_type AS '시험유형'
     , a.exam_date AS '시험일자'
     , a.exam_location AS '시험장소'
     , b.lec_name AS '강좌명'
  FROM exam a
  JOIN lecture b ON (a.lec_id = b.lec_id);
```
    
![fr08.gif](README%2090456e44faab4013bf4520930090a7ab/fr08.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-009</summary>
<div markdown="1">
    
```sql
-- FR-009. 시험코드가 같은 학생들의 점수 평균보다 점수가 높은 학생들의 
-- stud_id, stud_name, exam_id, exam_score, 시험코드별 점수 평균을 조회                   
    
SELECT
        a.stud_id AS '학생코드'
      , a.stud_name AS '학생명'
      , b.exam_id AS '시험코드'
      , b.exam_score AS '시험성적'
      , (SELECT AVG(exam_score) 
            FROM exam_score
          WHERE exam_id = b.exam_id)'평균점수'
  FROM student a
  JOIN exam_score b ON (a.stud_id = b.stud_id)
 WHERE b.exam_score > (SELECT AVG(exam_score) 
                              FROM exam_score
                            WHERE exam_id = b.exam_id);
```
    
![ezgif.com-video-to-gif-converter (3).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(3).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-010</summary>
<div markdown="1">
    
```sql
-- FR-10. 강좌 테이블에서 강좌정보 검색
-- 강좌테이블에서 강좌번호, 강좌명, 수강료, 수강 정원, 교재의 정보를 조회할 수 있다.
    
SELECT
         a.lec_id
       , a.lec_name
       , a.lec_fee
       , a.lec_capa
       , b.bk_name
       , b.bk_price
  FROM lecture a
  JOIN book b ON (a.bk_id = b.bk_id);
```
    
![FR-010_양지혜.gif](README%2090456e44faab4013bf4520930090a7ab/FR-010_%25EC%2596%2591%25EC%25A7%2580%25ED%2598%259C.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-012</summary>
<div markdown="1">
    
```sql
-- FR-012. 강좌가 녹화된 날짜인 rec_date를 기준으로 강좌들의 
-- 날짜별 녹화 영상을 조회할 수 있다.
    
SELECT
         a.rec_date AS '녹화일자/시간'
      , b.lec_name AS '강좌명'
      , a.rec_URL AS '영상URL'
      , a.rec_origin_name AS '원본파일명'
      , a.rec_rename AS 'RENAME 명'
  FROM lec_record a
  JOIN lecture b ON (a.lec_id = b.lec_id);
```
    
![fr12.gif](README%2090456e44faab4013bf4520930090a7ab/fr12.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-013</summary>
<div markdown="1">
    
```sql
-- FR-013. 강좌별, 학생별, 날짜별 출석 상태 조회
-- 강좌번호(lec_id), 학생번호(stud_id)를 통해 강좌, 학생, 날짜의 조건에 맞추어
-- 출석, 지각, 조퇴, 외출, 결석의 여부와 시각을 조회할 수 있다.
    
SELECT
       c.lec_name as 강좌명
     , a.date_id as 날짜
     , b.stud_name as 학생이름
     , a.att_absent_state as 결석여부
  FROM attendance a
  JOIN student b ON (a.stud_id = b.stud_id)
  JOIN lecture c ON (a.lec_id = c.lec_id)
 WHERE a.date_id = '2023-01-02' AND a.att_absent_state = 'Y';
```
    
![ezgif.com-video-to-gif-converter (8).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(8).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-016</summary>
<div markdown="1">
    
```sql
-- FR-016. 학생별 배치고사 성적 추출
-- 학생번호(stud_id)를 통해 학생의 배치고사 성적을 조회할 수 있다.
    
SELECT
       a.exam_type as 시험종류
     , a.placement_exam_id as 배치수험번호
     , a.placement_exam_score as 배치고사점수
     , b.stud_name as 학생이름
  FROM placement_exam a
  JOIN student b ON (a.stud_id = b.stud_id)
 WHERE b.stud_name = 'Student5';
```
    
![ezgif.com-video-to-gif-converter (10).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(10).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-017</summary>
<div markdown="1">
    
```sql
-- FR-017. 학생들의 결제내역 조회
-- 학생별로 결제내역을 가지며 결제기록을 조회할 수 있다.
    
SELECT
       a.stud_id AS '학생코드'
      , a.stud_name AS '학생명'
      , b.pay_id AS '결제코드'
      , b.pay_date AS '결제날짜'
      , c.pay_status AS '결제상태'
  FROM student a
  JOIN pay_history b ON (a.stud_id = b.stud_id)
  JOIN lecture_per_student c ON (a.stud_id = c.stud_id);
```
    
![ezgif.com-video-to-gif-converter (4).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(4).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-019</summary>
<div markdown="1">
    
```sql
-- FR-019. 학생별 수강 중인 강좌 조회
-- 학생번호(stud_id)와 강좌번호(lec_id)를 통해 학생별로 수강중인 강좌와
-- 해당 강좌의 결제여부를 조회할 수 있다.
    
SELECT
       b.lec_name AS '강좌명'
     , c.stud_name AS '학생이름'
     , a.pay_status AS '결제여부'
  FROM lecture_per_student a
  JOIN lecture b ON (a.lec_id = b.lec_id)
  JOIN student c ON (a.stud_id = c.stud_id);
```
    
![fr19.gif](README%2090456e44faab4013bf4520930090a7ab/fr19.gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-020</summary>
<div markdown="1">
    
```sql
-- FR-020. 학생별 공인 영어 성적 조회
-- 학생번호(stud_id)를 통해 학생별 공인 영어 성적 발급 번호, 점수, 시험 일자를
-- 조회할 수 있다.
    
SELECT
      a.cert_exam_id as 공인영어발급번호
    , b.stud_name as 학생이름
    , a.cert_exam_date as 시험일자
    , a.cert_exam_score as 점수
    , a.cert_exam_expire_status as 만료여부
  FROM cert_exam_score a
  JOIN student b ON (a.stud_id = b.stud_id)
 WHERE a.stud_id = 7;
```
    
![ezgif.com-video-to-gif-converter (11).gif](README%2090456e44faab4013bf4520930090a7ab/ezgif.com-video-to-gif-converter_(11).gif)

</div>
</details>

<details>
<summary>TEST CASE: FR-021</summary>
<div markdown="1">
    
```sql
-- FR-021. 수강 강좌 환급 여부 조회
-- 학생의 id를 통해 학생별 레벨을 조회하고, level 테이블을 조인하여
-- 환급 기준점수를 충족하는지 확인한다.
    
SELECT
    a.return_id AS '환급번호'
  , a.stud_id AS '학생코드'
  , b.stud_name AS '학생이름'
  , a.lec_id AS '강의코드'
  , b.level_id AS '학생별 레벨'
  , c.refund_reference_score AS '환급 기준 점수'
  , a.return_status AS '환급 여부'
  FROM refund a
  JOIN student b ON (a.stud_id = b.stud_id)
  JOIN level c ON (b.level_id = c.level_id);
```
    
![fr21.gif](README%2090456e44faab4013bf4520930090a7ab/fr21.gif)

</div>
</details>

</div>
</details>
    
<details>
<summary>5-3. Transaction Case</summary>
<div markdown="1">

<details>
<summary>ROLLBACK</summary>
<div markdown="1">

![transaction_rollback1-ezgif.com-video-to-gif-converter.gif](README%2090456e44faab4013bf4520930090a7ab/transaction_rollback1-ezgif.com-video-to-gif-converter.gif)
 </div>
</details> 

<details>
<summary>COMMIT</summary>
<div markdown="1"> 
    
![transaction_commit1-ezgif.com-video-to-gif-converter.gif](README%2090456e44faab4013bf4520930090a7ab/transaction_commit1-ezgif.com-video-to-gif-converter.gif)

</div>
</details>   

</div>
</details>  

## 📗 6. 회고록

### 6-1. 회의록

<details>
<summary>240101 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
 - ERD Cloud를 이용하여 협업 진행.
 - 학원 시스템을 데이터 모델링 통하여 ERD 작성
 - 각 엔터티 관계성 정립을 통한 모델 구축.
    
 📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
 - 장소 : 공간샘스터디카페 - 세미나
 - 시간: 13:00 ~ 19:00 (6h)

    
2. 스터디 회고
    
- 회원(지현근), 반(손세림), 인사행정(소우주, 양지혜), 수강(신대영, 조예린) -  각자 파트를 정함.
- 각 파트에 맞는 엔터티를 스터디 이전에 만들어 본 후 스터디를 통해 모델링을 진행하기로 했다.
- 처음 모여 엔터티들을 확인했다. 필요한 엔터티는 두고, 필요없는 엔터티를 제거하며 진행하였다. 컬럼을 확인 하여 따로 엔터티를 만들어 빼거나 필요없는 부분을 제거했다.
- Barker 표기법에서 사용할 수 있는 베타관계를 IE표기법을 사용하려니 새로운 엔터티를 생성하여 베타관계를 나타낼 수 있었다.
- M:N 관계 정규화에 대해 잘 알지 못했는데, 해당 스터디를 통해 실제로 해결 해볼 수 있는 좋은 기회였다. 또한 각각 엔터티 파트를 해 오고, 관계를 표시하려다 보니 생각이 전부 달라 다음 협업땐 미리 시나리오와 요구사항을 정리 후 진행하는 것이 좋다라 생각된다.
    
 3. 스터디 사진
    
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2010.png)

</div>
</details>


<details>
<summary>240102 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
- ERDCloud에 작성한 모델링 내용에 대해 발표하고 피드백을 받아 수정
- Google docs로 협업하여 WBS와 프로젝트 기획서를 작성
- 기획서 및 ERD를 참조하여 사용자의 요구사항을 정리하고 요구사항명세서를 작성
- ERDCloud의 기존 모델링 내용을 바커 표기법으로 최종 작성
    
📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
- 장소 : 동작구 캠퍼스 제 1강의실
- 시간: 10:00 ~ 13:00, 14:00 ~ 18:00 (7h)
    
2. 스터디 회고
    
- ERDCloud 피드백 반영
             
1) 학생이 항상 환급되는 게 아니라. 700점 이상 반이 750점 받아야 환급된다.
2) 강좌와 시험을 연결
3) 출석관리 복잡 → 지각/외출/조퇴 속성이 따로 존재
4) 녹화영상: 저장된 경로-파일명-리네임(겹치지 않도록)
5) 강좌별 출석관리: 요일코드 → 날짜코드
6) 직급과 부서를 따로 직원에 연결
              
        
    [ERD Cloud](https://www.erdcloud.com/d/kCGGQxp4SbLQmeTph)



- Google docs로 작성한 WBS, 프로젝트 기획서, 요구사항명세서
        
    [onejo WBS.xlsx](https://docs.google.com/spreadsheets/d/125BpUohO1kYKRrj6PqLOdRJN6mHNbAyU/edit#gid=1057334268)
        
    [WBS](https://docs.google.com/document/d/1aRtoG25T53GSU6CWpsoIUyIhkGxuez_N4SvJx8T-nLQ/edit)
        
    [요구사항명세서](https://docs.google.com/spreadsheets/d/1osO60pgOUC9nGXAfSiQJHdxwqVV4rpn3SHh1lWrW7-s/edit#gid=0)
        
- 바커 표기법으로 작성한 ERD
        
    [공인영어학원.damx](README%2090456e44faab4013bf4520930090a7ab/%25EA%25B3%25B5%25EC%259D%25B8%25EC%2598%2581%25EC%2596%25B4%25ED%2595%2599%25EC%259B%2590.damx)
        
    
- 회고 작성 통해 발견한 수정 내용 → 시험점수, 강좌별출석관리테이블을 학생 테이블과 연결
    
![수정.png](README%2090456e44faab4013bf4520930090a7ab/%25EC%2588%2598%25EC%25A0%2595.png)
    
![수정2.png](README%2090456e44faab4013bf4520930090a7ab/%25EC%2588%2598%25EC%25A0%25952.png)
    
- 함께 모여 스터디를 하면서 각자의 의견과 아이디어를 나누고, 하나의 일관된 목표를 향해 나아가면서 협력과 효율성이 좋아졌다.
- 스터디 그룹 내에서 자유로운 의사소통과 열린 토론의 분위기가 조성되어, 구성원들이 자신의 의견을 자유롭게 표현하고 토론하는 과정에서 좋은 의견이 많이 도출되었다.
- 이러한 상호작용은 그룹 내에서 긍정적인 팀워크를 형성하게 되었고, 결과적으로 일의 진척이 신속하게 이뤄지게 되었다.
    
    ### 3. 스터디 사진
    
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2011.png)
    
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled.jpeg)
</div>
</details>   



<details>
<summary>240103 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
- 이전 스터디에서 작성한 ERD Cloud 개념적 모델링을 바탕으로 물리적 모델링에 관한 논의 진행
- 각 속성의 공통적인 특징들을 고려하여 도메인 및 데이터 타입 정의
- 테이블명, 컬럼명 지정에 있어 코딩 컨벤션 규약에 맞추어 논의함
    
📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
- 장소 : 동작구 캠퍼스 제 1강의실
- 시간: 16:00 ~ 18:00 (2h)
    
2. 스터디 회고
    
> 물리적 모델링
- 개념 모델을 실제로 데이터베이스에 이식할 수 있도록 물리적 요소에 집중하여 논의하고 설계하였다.
- 업무적 무결성을 지키기 위해 정규화 및 비정규화를 진행하고 테이블을 분리하는 과정에서 여러 사람의 의견이 제시되어 최적의 방안을 찾을 수 있었다.
- 코딩 컨벤션 규약을 준수했기 때문에 효율적이고 유지보수성이 높은 모델링에 많은 도움이 되었다.
        
[도메인, 데이터 타입 정의](https://docs.google.com/spreadsheets/d/1tb8xn3L8T-Tyb86hwuyzdJaW6EcTmqt33Orp58w3-BQ/edit#gid=1523905817)
        
    
3. 스터디 사진
    
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2012.png)
</div>
</details>   


<details>
<summary>240104 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
- 바커표기법으로 작성한 모델링에서 DDL 추출.
- Google docs 및 Chat gpt를 활용하여 Data 추출.
- 추출한 Data를 DML을 활용하여 DB를 구축.
- DB서버 구축 및 레플리카 서버를 구축하여 DB전송.
    
📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
- 장소 : 동작구 캠퍼스 제 1강의실
- 시간: 15:30 ~ 20:30 (5h)
    
2. 스터디 회고
    
- DA#에서 스크립트 추출
        
    [DA#에서 스크립트 추출.sql](README%2090456e44faab4013bf4520930090a7ab/DA%25EC%2597%2590%25EC%2584%259C_%25EC%258A%25A4%25ED%2581%25AC%25EB%25A6%25BD%25ED%258A%25B8_%25EC%25B6%2594%25EC%25B6%259C.sql)
        
- Google docs를 통한 Data 구축
        
    [https://docs.google.com/document/d/1cLDQYzdDF8__3p3gDIuNCT71u_vzApKK814a-yq2SvM/edit](https://docs.google.com/document/d/1cLDQYzdDF8__3p3gDIuNCT71u_vzApKK814a-yq2SvM/edit)
        
- 추출한 Data를 DML을 활용하여 DB 구축
        
    [DML 활용한 DB 구축.sql](README%2090456e44faab4013bf4520930090a7ab/DML_%25ED%2599%259C%25EC%259A%25A9%25ED%2595%259C_DB_%25EA%25B5%25AC%25EC%25B6%2595.sql)
        
    
- 오늘 스터디를 통해 특히 스터디의 중요성에 대해 알게 되었다. 많은 에러와 문제상황에 직면했는데 팀원들과 의견을 공유하면서 나아가 원하는 목표에 도달할 수 있었다고 생각한다.
- 스터디를 통해 프로젝트를 진행함으로써 집중력이 극대화 되었고, 모르는 부분을 팀원들이 적극적으로 알려주어 학습에도 큰 도움이 되었다.
- 스터디를 통해 다양한 창의적인 해결책을 알 수 있었으며 프로젝트 계획을 체계적으로 수립하고 진행하면서 발전해나가는 모습을 느낄 수 있었다.
    
3. 스터디 사진
    
![240104_1조 팀활동1.jpg](README%2090456e44faab4013bf4520930090a7ab/240104_1%25EC%25A1%25B0_%25ED%258C%2580%25ED%2599%259C%25EB%258F%25991.jpg)
    
![240104_1조 팀활동2.jpg](README%2090456e44faab4013bf4520930090a7ab/240104_1%25EC%25A1%25B0_%25ED%258C%2580%25ED%2599%259C%25EB%258F%25992.jpg)
 </div>
</details>   


<details>
<summary>240105 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
- Linux Ubuntu OS 환경의 replication DB 서버 구축 현황 확인
- 요구사항 명세서를 토대로 테스트케이스 정의서 작성
- 테스트케이스를 CRUD, JOIN, Transaction으로 구분해서 쿼리문 실행 및 영상 촬영
- 팀 노션을 통해 협업하여 README 내용 작성
    
📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
- 장소 : 동작구 캠퍼스 제 1강의실
- 시간: 14:00 ~ 19:00 (5h)
    
2. 스터디 회고
    
- Linux Ubuntu OS 환경의 replication DB 서버 구축 현황 확인
        
    
    > Ubuntu 20.04 / MariaDB 15.1
        
    
        
    ![Master status](README%2090456e44faab4013bf4520930090a7ab/Untitled%206.png)
        
    > Master status
        
    ![Master IP: 192.168.0.50](README%2090456e44faab4013bf4520930090a7ab/Untitled%207.png)
        
    > Master IP: 192.168.0.50
        
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%208.png)
        
    ![Slave Status: Slave 서버가 Master 서버를 잘 Following 하는 것 확인.](README%2090456e44faab4013bf4520930090a7ab/Untitled%2013.png)
        
    > Slave Status: Slave 서버가 Master 서버를 잘 Following 하는 것 확인.
        
- 요구사항 명세서를 토대로 테스트케이스 정의서 작성
        
    [요구사항명세서](https://docs.google.com/spreadsheets/d/1osO60pgOUC9nGXAfSiQJHdxwqVV4rpn3SHh1lWrW7-s/edit#gid=0)
        
    [테스트케이스 정의서](https://docs.google.com/spreadsheets/d/1qcAa6c_0MqGflC10ehZl9Xgtp1THU9ZJ3mJ6bYfTiaI/edit#gid=0)
        
- 테스트케이스를 CRUD, JOIN, Transaction으로 구분해서 쿼리문 실행 및 영상 촬영
    - 예시 : Create 케이스
            
        ![Linux Create Table.gif](README%2090456e44faab4013bf4520930090a7ab/Linux_Create_Table.gif)
            
- 팀 Notion 을 이용, 협업하여 README 작성 (추후 Markdown 으로 export 예정)
        
        [README](README%2090456e44faab4013bf4520930090a7ab.md) 
        
    
- README를 작업하며 한명이 Markdown 을 붙잡아 모든 작업을 다 하지 않고, Notion으로 협업함으로서 시간 단축 효과를 얻을 수 있었다.
- Notion으로 작성 중에, 각자 맡은 파트 작성하는 동안 실시간으로 서로 피드백을 주며 작성 오류를 줄이는 시너지 효과를 낼 수 있었다.
- Google Spreadsheet를 통하여 요구사항 명세서와 테스트케이스 정의서를 작성하며 몇 가지 자잘한 오류들을 잡아낼 수 있었다.
    
    ### 3. 스터디 사진
    
    - 요구사항 명세서
        
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%201.png)
        
    - 테스트케이스 정의서
        
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%209.png)
        
    - README
        
    ![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2014.png)
 </div>
</details>   


<details>
<summary>240108 회의록</summary>
<div markdown="1">
    
✍ 스터디 내용
    
- 테스트케이스를 CRUD, JOIN, Transaction으로 구분해서 쿼리문 실행 및 영상 촬영
- 팀 노션을 통해 협업하여 README 내용 작성
- 개념 모델링 추가 작성
- 노션의 README를 Github에 업로드 하기 위해 마크다운 작업
- 프로젝트 회고록 작성
    
📢 스터디 리뷰
    
1. 스터디 장소 및 시간
    
- 장소 : 동작구 캠퍼스 제 1강의실
- 시간: 9:30 ~ 12:00 (2h 30m)
    
2. 스터디 회고
    
- 테스트케이스를 CRUD, JOIN, Transaction으로 구분해서 쿼리문 실행 및 영상을 촬영하였다.
- 예시 : CRUD 중 update 케이스
            
![update.gif](README%2090456e44faab4013bf4520930090a7ab/update%201.gif)
            
        
- 테스트케이스 영상 작업 시 Notion으로 작업하며 파트를 분배하여 협업함으로써 쿼리문 실행 영상 촬영 시간을 단축할 수 있었다.
- 작업 과정을 순차적으로 나타내기 위해 개념 모델링을 추가로 작성하였다.
        
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%202.png)
        
- Notion으로 작업한 README를 Github에 업로드 하는 과정에서 토글이 적용되지 않는 문제점을 발견하였다. 이에 마크다운 작업을 통해 Github에서도 토글이 적용되도록 수정하였다.
    
3. 스터디 사진
    
![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2015.png)

</div>
</details>     

### 6-2. 개선 여지

### 서브 타입의 물리모델 결정기준
- Rollup, Rolldown, Identity ****

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2016.png)

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2017.png)

![Untitled](README%2090456e44faab4013bf4520930090a7ab/Untitled%2018.png)

- 초기 의도 :
    
    초기에는 데이터 관리의 용이함을 위해 강사와 직원 테이블을 별도로 구분하였다. 그러나 논리 모델링을 물리 모델링으로 구현하는 과정에서 출퇴근 관리를 위해 강사와 직원을 하나의 테이블에서 관리할 수 있도록 Rollup 방식으로 변경하였다.
    그 결과 테이블을 조회 시에 NULL값이 많이 발생하였다.
    
- 개선할 점:
    
    1) 강사와 직원 테이블에서 중복되는 컬럼값(이름, 연락처, 주소, 사진 등)을 구성원 정보 테이블로 통합하여 NULL이 발생하는 컬럼을 최소화하는 것이 필요하다.
    
    2) 강사와 직원을 구분하는 컬럼을 별도로 생성하여 조회의 편의성을 높여야 한다.
    
    3) 데이터의 증가에 따라 RollUp 방식이 아닌 Identity 방식으로 테이블을 유지함으로써 데이터의 확장성을 향상시킨다.
    

### 6-3. 개인적 감상

| 조원명 | 회고록 |
| --- | --- |
| 소우주 | 재수학원에서 일했던 경험을 살려 조금 더 디테일한 부분에 초점을 맞출 수 있었습니다. 많은 시간 동안 팀원들과 소통하면서 DB 모델링에 대한 이해가 깊어질 수 있었고, 더욱 좋은 성능을 내는 서브타입 모델링이 무엇일지 상황에 맞게 고민하며 진행하는 것의 중요성을 느꼈습니다. |
| 손세림 | 이번 프로젝트를 통해 데이터 모델링을 처음 접하게되어 서비스의 구상부터 사용자 요구사항을 명세화하고 ERD 모델링하여 서버에 배포하기까지 구체적 경험을 할 수 있었습니다. 첫 프로젝트인 만큼 모델링에 대한 이해가 부족하여 아쉬운 부분도 있었지만 팀원들과 여러 의견을 나누고 협업하며 개인으로서 부족했던 부분도 함께 채워나갈 수 있는 값진 시간이였습니다. |
| 신대영 | 서브타입에 대한 부족한 이해로 인해 모델링 시 효과적인 상속 및 일관된 구조를 설계하지 못하였습니다. 서브타입의 중요성과 활용 방안을 명확히 이해하고 프로젝트에 적용하는 능력을 향상시켜야 한다는 인식을 얻게 되었습니다. 또한 팀원들과 소통하며 공동 이해를 도출하는 과정이 유기적으로 잘 이루어져 부족하지만 성공적인 결과물을 완성하였습니다. |
| 양지혜 | 짧은 시간 동안 밀도 높은 협업 활동을 하였습니다. 결과가 완벽하지는 않더라도 팀원들끼리 아이디어를 나누고 토론하며 하나의 일관된 목표를 향해 나아가는 경험은 아주 감명 깊었습니다. 차후에는 시스템의 성능 개선을 좀 더 고려하여 발전한 성과를 이루고자 합니다. |
| 조예린 | 결정하는 데 있어 팀원들과 여러 의견 조율이 있었고, 하나의 주제에 대한 모델링이라도 다양한 접근이 가능하다는 것을 느꼈습니다. 특히, 물리 모델을 결정할 때 비즈니스 로직을 고려하여 모델의 유연성과 확장성을 고려해야 한다는 경험을 통해 최적화에 대한 이해가 더 깊어졌습니다. 팀의 목표를 위해 함께 노력하는 경험은 프로젝트 완수뿐만 아니라 개인적인 성장에도 큰 도움이 되었습니다. |
| 지현근 | 이번 프로젝트를 통해 정확하게 확립되지 않았던 개념을 직접 활용해봄으로써 DB 및 리눅스 개념 확립에 큰 도움이 되었다고 생각합니다. 또한 프로젝트 도중 어려움에 직면하는 상황이 있었지만 팀원들과의 협업 및 조언을 통해 해결해나가는 모습을 통해 팀 협업의 중요성과 팀원들에게 감사함을 느꼈습니다. 또한 세부적인 설계 과정의 중요성에 대해 깨달았으며 이번 프로젝트를 통해 배운 내용을 토대로 스스로 보완하여 다음 프로젝트에는 더 나은 결과물을 만들어 나가겠습니다. |