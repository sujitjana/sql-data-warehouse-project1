----create all table for silver



if OBJECT_ID('silver.crm_cust_info' , 'u') is not null
    drop table silver.crm_cust_info;


create table silver.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date date,
dwh_create_date datetime2 default getdate()
);
---change the coulmn name material to marital
---EXEC sp_rename 'silver.crm_cust_info.cst_material_status', 'cst_marital_status', 'COLUMN';
go 
if OBJECT_ID('silver.crm_prd_info' , 'u') is not null
    drop table silver.crm_prd_info;
create table silver.crm_prd_info(
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_date date,
prd_end_date date,
dwh_create_date datetime2 default getdate()
);
go 
if OBJECT_ID('silver.crm_sales_details' , 'u') is not null
    drop table silver.crm_sales_details;
create table silver.crm_sales_details(
sls_order_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_date date,
sls_ship_date date,
sls_due_date date,
sls_sales int,
sls_quantity int,
sls_price int,
dwh_create_date datetime2 default getdate()
);
go 
if OBJECT_ID('silver.erp_cust' , 'u') is not null
    drop table silver.erp_cust;
create table silver.erp_cust(
cust_cid nvarchar(50),
cust_birth_date date,
cust_gender nvarchar(50),
dwh_create_date datetime2 default getdate()
);
go
if OBJECT_ID('silver.erp_loc' , 'u') is not null
    drop table silver.erp_loc;
create table silver.erp_loc(
loc_cid nvarchar(50),
loc_country nvarchar(50),
dwh_create_date datetime2 default getdate()
);
go
if OBJECT_ID('silver.erp_category' , 'u') is not null
    drop table silver.erp_category;
create table silver.erp_category(
category_id nvarchar(50),
category_cat nvarchar(50),
category_sub_cat nvarchar(50),
category_maintenance nvarchar(50),
dwh_create_date datetime2 default getdate()
);
