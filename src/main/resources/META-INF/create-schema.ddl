create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, id int4 not null, primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, id int4 not null, primary key (id))
create table USER (USER_TYPE varchar(31) not null, id int4 not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (id))
alter table COMPANY add constraint FK9mhy3781lm51yt291rka26u3l foreign key (id) references USER
alter table STUDENT add constraint FKp3nydkm5h8pllvi9cx1t2aqws foreign key (id) references USER
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, primary key (USER_ID))
create table USER (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table COMPANY add constraint FKmp1vvd7b5t3klaevowu1csg2b foreign key (USER_ID) references USER
alter table STUDENT add constraint FKnpd2d2mxnlcejykym5ntlfxvi foreign key (USER_ID) references USER
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table USER (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table COMPANY add constraint FKmp1vvd7b5t3klaevowu1csg2b foreign key (USER_ID) references USER
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FKnpd2d2mxnlcejykym5ntlfxvi foreign key (USER_ID) references USER
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table USER (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table COMPANY add constraint FKmp1vvd7b5t3klaevowu1csg2b foreign key (USER_ID) references USER
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FKnpd2d2mxnlcejykym5ntlfxvi foreign key (USER_ID) references USER
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, primary key (id))
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, descriptionOfAdvert varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), titleOfAdvert varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), title varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_TAGS_OF_FIELDS (Advertisement_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKii74q2ul9r9pj0iega4r536fj foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), title varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), title varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table TAGS_OF_FIELDS_ADVERTISEMENT (tagsForField_id int8 not null, adverts_id int8 not null)
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
alter table TAGS_OF_FIELDS_ADVERTISEMENT add constraint FK6xo1c0w4ylmj25qs6vt3v9mq8 foreign key (adverts_id) references ADVERTISEMENT
alter table TAGS_OF_FIELDS_ADVERTISEMENT add constraint FKn3g5kh8a590hrvkvamp9w5nt0 foreign key (tagsForField_id) references TAGS_OF_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), requestedMoneyPerHour int4 not null, status varchar(255), title varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, name varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status int4, USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsForField_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKjvgunn6ww8ufv474te64ok80g foreign key (tagsForField_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (adverts_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), fieldTitle_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKaik19a76obj3v37ml1wdmaeq4 foreign key (tagsOfAdvert_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKh1mfkvseor5mn6rofyyfo6wvp foreign key (adverts_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FK5tuxymq0oqr0jbugop3358ybb foreign key (fieldTitle_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKaik19a76obj3v37ml1wdmaeq4 foreign key (tagsOfAdvert_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKii74q2ul9r9pj0iega4r536fj foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FKmor7praxi3d7sm0gv59x18hg1 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAGS_OF_FIELDS (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAGS_OF_FIELDS (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKaik19a76obj3v37ml1wdmaeq4 foreign key (tagsOfAdvert_id) references TAGS_OF_FIELDS
alter table ADVERTISEMENT_TAGS_OF_FIELDS add constraint FKii74q2ul9r9pj0iega4r536fj foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAGS_OF_FIELDS add constraint FKmor7praxi3d7sm0gv59x18hg1 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (review_id int4 not null, description varchar(255), satisfactionLevel varchar(255), company_USER_ID int4, student_USER_ID int4, primary key (review_id))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKssywwb4o4dndryy1p7vsccolk foreign key (company_USER_ID) references COMPANY
alter table REVIEW add constraint FKhltqnnbqdnnbttpnt0djb4xuu foreign key (student_USER_ID) references STUDENT
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
<<<<<<< HEAD
create table ADVERTISEMENT (id int4 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int4, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int4 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int4 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int4 not null, name varchar(255), primary key (id))
=======
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
>>>>>>> variable_in_route
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
<<<<<<< HEAD
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int4, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
=======
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
>>>>>>> variable_in_route
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
<<<<<<< HEAD
create table ADVERTISEMENT (id int4 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int4, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int4 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int4 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int4 not null, name varchar(255), primary key (id))
=======
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
>>>>>>> variable_in_route
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
<<<<<<< HEAD
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int4, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
=======
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int8 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int8, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int8 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int8 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int8 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int8, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
>>>>>>> variable_in_route
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int4 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int4, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int4 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int4 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int4 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int4, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
create sequence hibernate_sequence start 1 increment 1
create table ADVERTISEMENT (id int4 not null, creationTime date, description varchar(255), money_per_hour int4, status varchar(255), title varchar(255), weeklyCapacity int4 not null, cityOfWorking_id int4, fieldOfWork_id int8, student_USER_ID int4, primary key (id))
create table ADVERTISEMENT_SPOKEN_LANGUAGES (Advertisement_id int4 not null, spokenLanguages_id int8 not null)
create table ADVERTISEMENT_TAG (Advertisement_id int4 not null, tagsOfAdvert_id int8 not null)
create table CITY (id int4 not null, name varchar(255), primary key (id))
create table COMPANY (description varchar(255), link varchar(255), verified boolean not null, USER_ID int4 not null, primary key (USER_ID))
create table JOB_FIELDS (id int8 not null, name varchar(255), primary key (id))
create table REVIEW (reviewId int4 not null, description varchar(255), satisfactionLevel varchar(255), receiver_USER_ID int4, sender_USER_ID int4, primary key (reviewId))
create table SPOKEN_LANGUAGES (id int8 not null, level int4, language varchar(255), primary key (id))
create table STUDENT (birthdate varchar(255), gender varchar(255), image varchar(255), status varchar(255), USER_ID int4 not null, city_id int4, primary key (USER_ID))
create table STUDENT_SPOKEN_LANGUAGES (Student_USER_ID int4 not null, languagesSpoken_id int8 not null)
create table TAG (id int8 not null, WorkCategName varchar(255), field_id int8, primary key (id))
create table USERS (USER_ID  serial not null, eMailAdress varchar(255), name varchar(255), password varchar(255), phoneNumber varchar(255), userName varchar(255), userStatus varchar(255), primary key (USER_ID))
alter table ADVERTISEMENT add constraint FKqhgyj6xyv6u9bhyst1lbwwbwd foreign key (cityOfWorking_id) references CITY
alter table ADVERTISEMENT add constraint FKn8uuvkxndsp071iw6oesr3o9o foreign key (fieldOfWork_id) references JOB_FIELDS
alter table ADVERTISEMENT add constraint FKnhymk7stqfu40ygqajxw6o1e7 foreign key (student_USER_ID) references STUDENT
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKlits060heu1m9dk6xk35xjt3p foreign key (spokenLanguages_id) references SPOKEN_LANGUAGES
alter table ADVERTISEMENT_SPOKEN_LANGUAGES add constraint FKra9iw7ilbxjeqfdu2pvxqrmhb foreign key (Advertisement_id) references ADVERTISEMENT
alter table ADVERTISEMENT_TAG add constraint FK5c3sb0ajbadptvxlanl0pv6wx foreign key (tagsOfAdvert_id) references TAG
alter table ADVERTISEMENT_TAG add constraint FKqvxduamep5g631p1dcjob6j6g foreign key (Advertisement_id) references ADVERTISEMENT
alter table COMPANY add constraint FKehbso24wodt66wk0rw0adqfad foreign key (USER_ID) references USERS
alter table REVIEW add constraint FKejrh96krj2ijadr0a1s36j1vn foreign key (receiver_USER_ID) references USERS
alter table REVIEW add constraint FKfmethwfjg7mb1btnm6hbs0lc1 foreign key (sender_USER_ID) references USERS
alter table STUDENT add constraint FKb0fujy5thsyctux45cu0vns44 foreign key (city_id) references CITY
alter table STUDENT add constraint FK7fn9rg9qky67b2js1pe3ulfi1 foreign key (USER_ID) references USERS
alter table STUDENT_SPOKEN_LANGUAGES add constraint FK7b9dc5ipktt87ouvp2nb1y13d foreign key (languagesSpoken_id) references SPOKEN_LANGUAGES
alter table STUDENT_SPOKEN_LANGUAGES add constraint FKe8bg10qsg2ix7ga8cn78gum52 foreign key (Student_USER_ID) references STUDENT
alter table TAG add constraint FKf030c3jenhi3h2iaombrpr2r9 foreign key (field_id) references JOB_FIELDS
