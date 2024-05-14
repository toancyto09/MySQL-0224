select * from assignment_03.answer;
--
select duration, created_date, count(exam_id) as exam_count
from exam
group by duration, created_date
having count(exam_id) > 1
order by duration, created_date;

-- cau 7
select question_id 
from answer
group by question_id
having count(content) >= 4;

INSERT INTO exam (exam_id, code, title, category_id, duration, creator_id)
VALUES 			 ('11', 'VTIQ011', 'Đề thi MySQL', '2', null, '9');

--
delete from exam
where duration is null;
-- xóa tất cả các exam được tạo trước ngày 20/12/2019
delete from exam
where created_date < "2019-12-20";
-- Xóa tất các question có nội dung bắt đầu bằng từ "câu hỏi"
delete from question 
where content like "câu hỏi%";

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá
-- Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE account
SET full_name = "Nguyễn Bá Lộc", email = "loc.nguyenba@vti.com.vn"
WHERE account_id = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE group_account
SET group_id = 4
WHERE account_id = 5;


