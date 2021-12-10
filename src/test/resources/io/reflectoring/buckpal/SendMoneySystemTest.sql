delete from tb_activity;
delete from tb_account;

insert into tb_account (id_account) values (1);
insert into tb_account (id_account) values (2);

alter sequence sq_account restart with 3;

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (1, '2018-08-08 08:00:00.0', 1, 1, 2, 500);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (2, '2018-08-08 08:00:00.0', 2, 1, 2, 500);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (3, '2018-08-09 10:00:00.0', 1, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (4, '2018-08-09 10:00:00.0', 2, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (5, '2019-08-09 09:00:00.0', 1, 1, 2, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (6, '2019-08-09 09:00:00.0', 2, 1, 2, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (7, '2019-08-09 10:00:00.0', 1, 2, 1, 1000);

insert into tb_activity(id_activity , transaction_datetime, owner_account_id, source_account_id, target_account_id, amount)
values (8, '2019-08-09 10:00:00.0', 2, 2, 1, 1000);

alter sequence sq_activity restart with 9;
