-- Insert data into the level table
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

-- Insert data into the job table
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

-- 학생
-- Insert temporary data with stud_id and level_id set to NULL
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


-- 강의실
-- 데이터 삽입
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




-- 교재
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

-- 부서
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

-- 공인영어시험성적
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

-- 배치고사
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


-- 결제기록
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

-- 빠짐
-- 강좌별출석관리
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



-- 출퇴근관리
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

– 녹화영상

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






-- 학생별 수강강좌
-- lecture_per_student 테이블에 데이터 추가
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


-- 환급 
-- return 테이블에 데이터 추가
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

SELECT * from `refund`;


-- 구성원정보
-- mem_info 테이블에 데이터 추가
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





-- exam
-- exam_id(PK, AUTO_INCREMENT), exam_type, exam_date, lec_id(FK)
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



-- 시험점수
-- exam_score
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


-- 강좌
-- lecture
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
