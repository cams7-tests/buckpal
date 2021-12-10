drop sequence if exists sq_activity;
create sequence sq_activity start with 1 increment by 1;
drop table tb_activity if exists;
create table tb_activity(
    id_activity bigint not null, 
    transaction_datetime timestamp not null,
    owner_account_id bigint not null,
    source_account_id bigint not null,
    target_account_id bigint not null,
    amount integer not null,
    primary key (id_activity)
);

drop sequence if exists sq_account;
create sequence sq_account start with 1 increment by 1;
drop table tb_account if exists;
create table tb_account(
    id_account bigint not null,
    primary key (id_account)
);

alter table tb_activity add constraint fk_tb_act_own_acc_id foreign key (owner_account_id) references tb_account;
alter table tb_activity add constraint fk_tb_act_sour_acc_id foreign key (source_account_id) references tb_account;
alter table tb_activity add constraint fk_tb_act_tar_acc_id foreign key (target_account_id) references tb_account;

