SELECT student_info.s_fname, student_info.s_lname, country_list.country_name
FROM student_info
INNER JOIN student_address ON student_address.s_id = student_info.s_id
INNER JOIN country_list ON country_list.country_id = student_address.country_id

/*///////////////normal query and put it in the "creat view"*/
SELECT student_info.s_fname, student_info.s_lname, country_list.country_name, student_status.status_desc
FROM student_info
INNER JOIN student_address ON student_address.s_id = student_info.s_id
INNER JOIN country_list ON country_list.country_id = student_address.country_id
INNER JOIN student_status ON student_status.status_id = student_info.status_id

/*///////////////creat view to mock up virtual TABLE and drop it afterward*/
CREATE VIEW intercoop AS (
SELECT student_info.s_fname, student_info.s_lname, country_list.country_name, student_status.status_desc
FROM student_info
INNER JOIN student_address ON student_address.s_id = student_info.s_id
INNER JOIN country_list ON country_list.country_id = student_address.country_id
INNER JOIN student_status ON student_status.status_id = student_info.status_id
);

/*//////////////creat view to mock up virtual TABLE and drop it afterward */
CREATE VIEW intercoop AS (
SELECT student_info.s_fname, student_info.s_lname, country_list.country_name, student_status.status_desc, COUNT(*) AS status_num
FROM student_info
INNER JOIN student_address ON student_address.s_id = student_info.s_id
INNER JOIN country_list ON country_list.country_id = student_address.country_id
INNER JOIN student_status ON student_status.status_id = student_info.status_id
GROUP BY country_list.country_name,student_status.status_desc 
);

/*////////////////////////another method*/
select
    intercoop.*,
    coalesce(sum(case when status_desc = "End Trainee" then itemvalue end), 0) as Complete,
    coalesce(sum(case when status_desc = "Trainee" then itemvalue end), 0) as On_going,
    coalesce(sum(case when status_desc = "Waiting on Board" then itemvalue end), 0) as Awaiting
from intercoop
group by country_list.country_name


/*///////////////////////query 3 columns*/
SELECT 
    country_name, 
    sum( if( status_desc = 'End Trainee', status_num, 0 ) ) AS Complete,  
    sum( if( status_desc = 'Trainee', status_num, 0 ) ) AS On_going, 
    sum( if( status_desc = 'Waiting on Board', status_num, 0 ) ) AS Awaiting 
FROM 
    intercoop 
GROUP BY 
    country_name;
/*conclude waiting on board and on process*/
    SELECT 
    country_name, 
    sum( if( status_desc = 'End Trainee', status_num, 0 ) ) AS Complete,  
    sum( if( status_desc = 'Trainee', status_num, 0 ) ) AS On_going, 
    sum( if( status_desc = 'Waiting on Board' OR status_desc = 'On Process' , status_num, 0 ) ) AS Awaiting 
FROM 
    intercoop 
GROUP BY 
    country_name;

/*//////////////////////Query 4 columns */
SELECT 
    country_name, 
    sum( if( status_desc = 'End Trainee', status_num, 0 ) ) AS Complete,  
    sum( if( status_desc = 'Trainee', status_num, 0 ) ) AS On_going, 
    sum( if( status_desc = 'Waiting on Board' , status_num, 0 ) ) AS Awaiting, 
    sum( if( status_desc = 'On Process' , status_num, 0 ) ) AS On_Process
FROM 
    intercoop 
GROUP BY 
    country_name;