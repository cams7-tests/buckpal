insert into tb_account (id_account) values (nextval('sq_account'));
insert into tb_account (id_account) values (nextval('sq_account'));

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2018-08-08 08:00:00.0', 1, 1, 2, 500);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2018-08-08 08:00:00.0', 2, 1, 2, 500);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2018-08-09 10:00:00.0', 1, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2018-08-09 10:00:00.0', 2, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2019-08-09 09:00:00.0', 1, 1, 2, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2019-08-09 09:00:00.0', 2, 1, 2, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2019-08-09 10:00:00.0', 1, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (nextval('sq_activity'), '2019-08-09 10:00:00.0', 2, 2, 1, 1000);
