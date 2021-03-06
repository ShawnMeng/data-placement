-- Migrating warehouse table.

insert into warehouse select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from warehouse') as t1(
w_warehouse_sk integer,
w_warehouse_id char(16),
w_warehouse_name varchar(20),
w_warehouse_sq_ft integer,
w_street_number char(10),
w_street_name varchar(60),
w_street_type char(15),
w_suite_number char(10),
w_city varchar(60),
w_county varchar(30),
w_state char(2),
w_zip char(10),
w_country varchar(20),
w_gmt_offset numeric(5,2)
);


-- Migrating promotion table.

insert into promotion select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from promotion') as t1(
p_promo_sk integer,            
 p_promo_id  char(16),      
 p_start_date_sk  integer,         
 p_end_date_sk   integer,      
 p_item_sk   integer,            
 p_cost     numeric(15,2),         
 p_response_target integer,       
 p_promo_name   char(50),      
 p_channel_dmail  char(1),    
 p_channel_email  char(1),         
 p_channel_catalog char(1),   
 p_channel_tv   char(1),        
 p_channel_radio  char(1),      
 p_channel_press   char(1),       
 p_channel_event   char(1),       
 p_channel_demo   char(1),     
 p_channel_details  varchar(100),
 p_purpose    char(15),    
 p_discount_active  char(1)
);

-- Migrating item table.

insert into item select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from item') as t1(
 i_item_sk         integer, 
 i_item_id         char(16), 
 i_rec_start_date  date, 
 i_rec_end_date    date, 
 i_item_desc       varchar(200), 
 i_current_price   numeric(7,2), 
 i_wholesale_cost  numeric(7,2), 
 i_brand_id        integer, 
 i_brand           char(50), 
 i_class_id        integer, 
 i_class           char(50), 
 i_category_id     integer, 
 i_category        char(50), 
 i_manufact_id     integer, 
 i_manufact        char(50), 
 i_size            char(20), 
 i_formulation     char(20), 
 i_color           char(20), 
 i_units           char(10), 
 i_container       char(10), 
 i_manager_id      integer, 
 i_product_name    char(50)
);       


-- Migrating customer table.

insert into customer select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from customer') as t1(
 c_customer_sk           integer, 
 c_customer_id           char(16), 
 c_current_cdemo_sk      integer, 
 c_current_hdemo_sk      integer, 
 c_current_addr_sk       integer, 
 c_first_shipto_date_sk  integer, 
 c_first_sales_date_sk   integer, 
 c_salutation            char(10), 
 c_first_name            char(20), 
 c_last_name             char(30), 
 c_preferred_cust_flag   char(1), 
 c_birth_day             integer, 
 c_birth_month           integer, 
 c_birth_year            integer, 
 c_birth_country         varchar(20), 
 c_login                 char(13), 
 c_email_address         char(50), 
 c_last_review_date      char(10)       
);



-- Migrating web_sales table.

insert into web_sales select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from web_sales') as t1(
 ws_sold_date_sk           integer      , 
 ws_sold_time_sk           integer      , 
 ws_ship_date_sk           integer      , 
 ws_item_sk                integer      , 
 ws_bill_customer_sk       integer      , 
 ws_bill_cdemo_sk          integer      , 
 ws_bill_hdemo_sk          integer      , 
 ws_bill_addr_sk           integer      , 
 ws_ship_customer_sk       integer      , 
 ws_ship_cdemo_sk          integer      , 
 ws_ship_hdemo_sk          integer      , 
 ws_ship_addr_sk           integer      , 
 ws_web_page_sk            integer      , 
 ws_web_site_sk            integer      , 
 ws_ship_mode_sk           integer      , 
 ws_warehouse_sk           integer      , 
 ws_promo_sk               integer      , 
 ws_order_number           integer      , 
 ws_quantity               integer      , 
 ws_wholesale_cost         numeric(7,2) , 
 ws_list_price             numeric(7,2) , 
 ws_sales_price            numeric(7,2) , 
 ws_ext_discount_amt       numeric(7,2) , 
 ws_ext_sales_price        numeric(7,2) , 
 ws_ext_wholesale_cost     numeric(7,2) , 
 ws_ext_list_price         numeric(7,2) , 
 ws_ext_tax                numeric(7,2) , 
 ws_coupon_amt             numeric(7,2) , 
 ws_ext_ship_cost          numeric(7,2) , 
 ws_net_paid               numeric(7,2) , 
 ws_net_paid_inc_tax       numeric(7,2) , 
 ws_net_paid_inc_ship      numeric(7,2) , 
 ws_net_paid_inc_ship_tax  numeric(7,2) , 
 ws_net_profit             numeric(7,2) 
);


-- Migrating catalog_sales table.

insert into catalog_sales select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from catalog_sales') as t1(
 cs_sold_date_sk           integer      , 
 cs_sold_time_sk           integer      , 
 cs_ship_date_sk           integer      , 
 cs_bill_customer_sk       integer      , 
 cs_bill_cdemo_sk          integer      , 
 cs_bill_hdemo_sk          integer      , 
 cs_bill_addr_sk           integer      , 
 cs_ship_customer_sk       integer      , 
 cs_ship_cdemo_sk          integer      , 
 cs_ship_hdemo_sk          integer      , 
 cs_ship_addr_sk           integer      , 
 cs_call_center_sk         integer      , 
 cs_catalog_page_sk        integer      , 
 cs_ship_mode_sk           integer      , 
 cs_warehouse_sk           integer      , 
 cs_item_sk                integer      , 
 cs_promo_sk               integer      , 
 cs_order_number           integer      , 
 cs_quantity               integer      , 
 cs_wholesale_cost         numeric(7,2) , 
 cs_list_price             numeric(7,2) , 
 cs_sales_price            numeric(7,2) , 
 cs_ext_discount_amt       numeric(7,2) , 
 cs_ext_sales_price        numeric(7,2) , 
 cs_ext_wholesale_cost     numeric(7,2) , 
 cs_ext_list_price         numeric(7,2) , 
 cs_ext_tax                numeric(7,2) , 
 cs_coupon_amt             numeric(7,2) , 
 cs_ext_ship_cost          numeric(7,2) , 
 cs_net_paid               numeric(7,2) , 
 cs_net_paid_inc_tax       numeric(7,2) , 
 cs_net_paid_inc_ship      numeric(7,2) , 
 cs_net_paid_inc_ship_tax  numeric(7,2) , 
 cs_net_profit             numeric(7,2)
);



-- Migrating Inventory table.

insert into inventory select * from
dblink('host=gho-admin user=postgres password=postgres dbname=postgres',
'select * from inventory') as t1(
 inv_date_sk           integer, 
 inv_item_sk           integer, 
 inv_warehouse_sk      integer, 
 inv_quantity_on_hand  integer 
);



