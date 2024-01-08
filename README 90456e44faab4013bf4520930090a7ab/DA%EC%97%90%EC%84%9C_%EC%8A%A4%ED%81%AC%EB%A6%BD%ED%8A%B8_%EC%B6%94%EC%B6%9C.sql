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
 REFERENCES `level` (`level_id` );