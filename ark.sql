

select *
from statepark
/* looking at the data*/


select Region, County, Facility, Attendance_2021, Attendance_2020, Attendance_2019, Attendance_2018, (Attendance_2020 + Attendance_2021 + Attendance_2019 + Attendance_2018)  as total_visitors
from statepark
order by (total_visitors)desc
/*here im adding all years of attendance data to get a total amount of people who went to these parks.
i also wanted to see the most popular and least popular parks overall.*/




create view alltotalvisitors as
select Region, County, Facility, Attendance_2021, Attendance_2020, Attendance_2019, Attendance_2018, (Attendance_2020 + Attendance_2021 + Attendance_2019 + Attendance_2018)  as total_visitors
from statepark
/*creating view so i can look at this in tableau*/

select attendance_2020 , region, county, facility
from statepark
group by attendance_2020, year, region, county, facility
order by max(attendance_2020) asc
/*here i wanted to look at the least popular parks in 2020*/

create view attendance_2020 as
select attendance_2020 , region, county, facility
from statepark
group by attendance_2020, year, region, county, facility
/* view for attendance in 2020*/

select  Attendance_change_2018_to_2021, region, county, facility
from statepark
group by Attendance_change_2018_to_2021, year, region, county, facility
order by max(Attendance_change_2018_to_2021) asc
/*which parks had the most decreasse in visitors the last couple years*/

select  Attendance_change_2018_to_2021, region, county, facility
from statepark
group by Attendance_change_2018_to_2021, year, region, county, facility
order by max(Attendance_change_2018_to_2021) desc
/*which parks had the most increasse in visitors the last couple years*/

create view changeinvisitors as
select  Attendance_change_2018_to_2021, region, county, facility
from statepark
group by Attendance_change_2018_to_2021, year, region, county, facility
/*view for change in visitors*/

select Region, County, Facility, Attendance_2021, Attendance_2020, Attendance_2019, Attendance_2018, (Attendance_2020 + Attendance_2021 + Attendance_2019 + Attendance_2018)/4  as average_yearly_visitors
from statepark
order by (average_yearly_visitors)desc
/*here i calculated to see what the average yearly attendance is*/

create view averageattendance as
select Region, County, Facility, Attendance_2021, Attendance_2020, Attendance_2019, Attendance_2018, (Attendance_2020 + Attendance_2021 + Attendance_2019 + Attendance_2018)/4  as average_yearly_visitors
from statepark
/*creating view for average attendance*/


