

create database ProjectJOBPORTAL
use ProjectJOBPORTAL                          


select * from tblAdmin
select * from tbljobseeker
select * from tbljobrecruiters
select * from tbljobpost

select * from tbljobpost join tbljobrecruiters on tbljobrecruiters.jr_id=tbljobpost.jr_id join jobprofile on jobprofile.jpr_id=tbljobpost.jpr_id join joblocation on joblocation.loc_id=tbljobpost.loc_id
select * from tbljobseeker join jobseekergender on js_gender=g_id join tblqualification on js_qualifiction=q_id join jobprofile on js_profile=jpr_id join tblcountry on js_country=c_id join tblstate on js_state=s_id


create table tbljobpost
(
jp_id int primary key identity,
jr_id int,
jpr_id int,
minexp int,
maxexp int,
minsalary int,
maxsalary int,
loc_id int,
noofvacancy int,
comments varchar(1000),
inserted_date date,
status int default 0
)


create proc jobpost_insert
@jr_id int,
@jpr_id int,
@minexp int,
@maxexp int,
@minsalary int,
@maxsalary int,
@loc_id int,
@noofvacancy int,
@comments varchar(1000)
as
begin
insert into tbljobpost(jr_id,jpr_id,minexp,maxexp,minsalary,maxsalary,loc_id,noofvacancy,comments,inserted_date)
values(@jr_id,@jpr_id,@minexp,@maxexp,@minsalary,@maxsalary,@loc_id,@noofvacancy,@comments,GETDATE())
end








create table jobprofile
(
jpr_id int primary key identity,
jpr_name varchar(50)
)
insert into jobprofile(jpr_name)values('.Net'),('Java'),('Data Scientist'),('SQL')


create table jobprofSkills
(
sk_id int primary key identity,
jpr_id int,
sk_name varchar(50)
)





create table joblocation
(
loc_id int primary key identity,
loc_name varchar(50)
)
insert into joblocation(loc_name)values('Delhi'),('Gurguan'),('Banglore'),('Mohali'),('Noida'),('Chandigarh'),('Mumbai'),
('Hyderabad'),('Pune'),('Kolkata'),('Jaipur')







create proc jobseeker_status_change
@js_id int
as
begin
 declare @st int
select @st=status from tbljobseeker where js_id=@js_id

     if(@st=0)
       begin
     update tbljobseeker set status=1 where js_id=@js_id
          end
       else
         begin
		 update tbljobseeker set status=0 where js_id=@js_id
               end
end








create proc jobrecruiter_status_change
@jr_id int
as
begin
 declare @pt int
select @pt=status from tbljobrecruiters where jr_id=@jr_id

     if(@pt=0)
       begin
     update tbljobrecruiters set status=1 where jr_id=@jr_id
          end
       else
         begin
		 update tbljobrecruiters set status=0 where jr_id=@jr_id
               end
end





create proc jobpost_status_changes
@jp_id int
as
begin
 declare @st int
select @st=status from tbljobpost where jp_id=@jp_id

     if(@st=0)
       begin
     update tbljobpost set status=1 where jp_id=@jp_id
          end
       else
         begin
		 update tbljobpost set status=0 where jp_id=@jp_id
               end
end




truncate table tbljobseeker

create table tblAdmin
(
admin_id int primary key identity,
admin_name varchar(50),
admin_gender int,
admin_email varchar(50),
admin_password varchar(50),
inserted_date date,
status int default 0
)

insert into tblAdmin(admin_name,admin_gender,admin_email,admin_password,inserted_date)values('Ansh',1,'admin@','admin123',GETDATE())







create table tbljobseeker
(
js_id int primary key identity,
js_name varchar(50),
js_date date,
js_gender int,
js_qualifiction int,
js_profile int,
js_profileskill varchar(100),
js_country varchar(50),
js_state varchar(50),
js_city varchar(50),
js_email varchar(50),
js_password varchar(50),
js_image varchar(100),
js_resume varchar(100),
inserted_date date,
status int default 0
)



 create proc proc_jobseeker_insert
@js_name varchar(50),
@js_date date,
@js_gender int,
@js_qualifiction int,
@js_profile int,
@js_profileskill varchar(100),
@js_country  varchar(50),
@js_state  varchar(50),
@js_city varchar(50),
@js_email varchar(50),
@js_password varchar(50),
@js_image varchar(100),
@js_resume varchar(100)
as
begin
insert into tbljobseeker(js_name,js_date,js_gender,js_qualifiction,js_profile,js_profileskill,js_country,js_state,js_city,js_email,js_password,js_image,js_resume,inserted_date)values(@js_name,@js_date,@js_gender,@js_qualifiction,@js_profile,@js_profileskill,@js_country,@js_state,@js_city,@js_email,@js_password,@js_image,@js_resume,GETDATE())
end




create proc proc_jobseeker_update
@js_id int,
@js_name varchar(50),
@js_date date,
@js_gender int,
@js_qualifiction int,
@js_profile int,
@js_profileskill varchar(100),
@js_country  varchar(50),
@js_state  varchar(50),
@js_city varchar(50),
@js_email varchar(50),
@js_password varchar(50),
@js_image varchar(100),
@js_resume varchar(100)
as
begin
update tbljobseeker set js_name=@js_name,js_date=@js_date,js_gender=@js_gender,js_qualifiction=@js_qualifiction,js_profile=@js_profile,js_profileskill=@js_profileskill,js_country=@js_country,js_state=@js_state,js_city=@js_city,js_email=@js_email,js_password=@js_password,js_image=@js_image,js_resume=@js_resume
where js_id=@js_id
end




create table jobseekergender
(
g_id int primary key identity,
g_name varchar(50)
)
insert into jobseekergender(g_name)values('male')
insert into jobseekergender(g_name)values('female')
insert into jobseekergender(g_name)values('other')

select * from jobseekergender





create table tblqualification
(
q_id int primary key identity,
q_name varchar(50)
)


insert into tblqualification(q_name)values('MCA')
insert into tblqualification(q_name)values('MBA')
insert into tblqualification(q_name)values('B-Tech')
insert into tblqualification(q_name)values('M-Tech')
insert into tblqualification(q_name)values('BSC')
insert into tblqualification(q_name)values('BCA')
insert into tblqualification(q_name)values('Bcom')
insert into tblqualification(q_name)values('BBA')




create table tblcountry
(
c_id int primary key identity,
c_name varchar(50)
)


insert into tblcountry(c_name)values('India')
insert into tblcountry(c_name)values('Canada')
insert into tblcountry(c_name)values('USA')
insert into tblcountry(c_name)values('Germany')
insert into tblcountry(c_name)values('Australia')

select * from tblcountry




create table tblstate
(
s_id int primary key identity,
c_id int,
s_name varchar(50)
)


select * from tblstate 



insert into tblstate(c_id,s_name)values(1,'Uttar pradesh')
insert into tblstate(c_id,s_name)values(1,'Uttarakhand')
insert into tblstate(c_id,s_name)values(1,'Hyderabad')
insert into tblstate(c_id,s_name)values(1,'Punjab')
insert into tblstate(c_id,s_name)values(1,'Haryana')
insert into tblstate(c_id,s_name)values(1,'Gujarat')
insert into tblstate(c_id,s_name)values(1,'Madhya Pradesh')
insert into tblstate(c_id,s_name)values(1,'Rajasthan')
insert into tblstate(c_id,s_name)values(1,'Tamil Nadu')
insert into tblstate(c_id,s_name)values(1,'Karnataka')
insert into tblstate(c_id,s_name)values(2,'Ontario')
insert into tblstate(c_id,s_name)values(2,'Manitoba')
insert into tblstate(c_id,s_name)values(2,'Nova Scotia')
insert into tblstate(c_id,s_name)values(2,'Yukon')
insert into tblstate(c_id,s_name)values(3,'California')
insert into tblstate(c_id,s_name)values(3,'Florida')
insert into tblstate(c_id,s_name)values(3,'New York')
insert into tblstate(c_id,s_name)values(3,'Texas')
insert into tblstate(c_id,s_name)values(3,'Washington')
insert into tblstate(c_id,s_name)values(3,'Indiana')
insert into tblstate(c_id,s_name)values(4,'Berlin')
insert into tblstate(c_id,s_name)values(4,'Hessen')
insert into tblstate(c_id,s_name)values(4,'Hamburg')
insert into tblstate(c_id,s_name)values(4,'Brandenburg')
insert into tblstate(c_id,s_name)values(4,'Saarland')
insert into tblstate(c_id,s_name)values(5,'Victoria')
insert into tblstate(c_id,s_name)values(5,'Western Australia')
insert into tblstate(c_id,s_name)values(5,'Tasmania')
insert into tblstate(c_id,s_name)values(5,'Queensland')



create procedure bind_tblstates
@s_name int
as
begin
select * from tblstate  where c_id=@s_name
end






----------------------------------------------------------------------------------------------------------------------------



create table tbljobrecruiters
(
jr_id int primary key identity,
jr_name varchar(50),
jr_url varchar(50),
jr_country varchar(50),
jr_state varchar(50),
jr_city varchar(50),
jr_email varchar(50),
jr_password varchar(50),
inserted_date date,
status int default 0
)


create proc proc_jobrecruiters_inserts
@jr_name varchar(50),
@jr_url varchar(50),
@jr_country varchar(50),
@jr_state varchar(50),
@jr_city varchar(50),
@jr_email varchar(50),
@jr_password varchar(50)
as
begin
insert into tbljobrecruiters(jr_name,jr_url,jr_country,jr_state,jr_city,jr_email,jr_password,inserted_date)values(@jr_name,@jr_url,@jr_country,@jr_state,@jr_city,@jr_email,@jr_password,GETDATE())
end







create table tblcity
(
sc_id int primary key identity,
c_id int,
s_id int,
sc_name varchar(50)
)








create table tblcontact
(
contact_id int primary key identity,
contact_name varchar(50),
contact_email varchar(50),
contact_subject varchar(100),
contact_message varchar(1000),
)
select * from tblcontact