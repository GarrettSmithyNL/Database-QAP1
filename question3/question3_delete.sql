with to_be_deleted as 
	(
		(select address_id from address order by address_id desc limit 2)
		except select max(address_id) as address_id from address
	)

delete from address
using to_be_deleted
where address.address_id = to_be_deleted.address_id;

select * from address
order by address_id desc limit 5