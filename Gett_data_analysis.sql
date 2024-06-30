-- Not all data got imported!!
use Gett;

select * from data_orders;

select count(*) from data_orders;

select order_gk from data_orders where order_gk is null;	-- no row without order id

select order_datetime from data_orders where order_datetime is null; -- no null row

-- Data cleaning
create table gett_bookings as 
select 
	row_number() over(order by order_gk) row_no,
	order_gk as order_id,
	from_unixtime(order_datetime/1000) as order_datetime_standard,
    m_order_eta as eta_driver,
    case when order_status_key = 4 then "client" else "system" end cancelled_by,
    case when is_driver_assigned_key = 0 then "false" else "true" end is_driver_assigned,
    round(cancellations_time_in_seconds/60, 0) as cancellation_time_in_minutes
from data_orders 
where order_gk!=3000583041974; -- is an outlier as it shows year 1970 value while others are 2065 year; 
    
-- clean table
select * from gett_bookings;

-- reasons for failure
select 
	cancelled_by,
    is_driver_assigned,
    count(order_id)
from gett_bookings
group by cancelled_by, is_driver_assigned
order by cancelled_by;

-- Cancellation time analysis
select 
	cancellation_time_in_minutes,
    is_driver_assigned,
    count(order_id)
from gett_bookings
group by cancellation_time_in_minutes, is_driver_assigned
order by count(order_id) desc;

-- hours v/s order cancellation
select 
	hour(order_datetime_standard), 
    is_driver_assigned,
    count(order_id)
from gett_bookings
group by hour(order_datetime_standard), is_driver_assigned
order by count(order_id) desc;




	




