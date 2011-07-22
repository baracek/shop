delete from checkouts where state in ('address');
/*update orders a set state = 'payment' where state = 'paid' and exists ( select state from shipments b where b.order_id = a.id and state <> 'shipped' );*/
update orders a set state = 'complete' where state = 'paid'; /*and exists ( select state from shipments b where b.order_id = a.id and state = 'shipped' );*/
update orders set state = 'payment' where state = 'balance_due';
update payment_methods set type = 'Gateway::Elavon' where type = 'ElavonExtensionGateway';
delete from payment_methods where type = 'MonerisExtensionGateway';
update preferences set value = 'imperial' where value like '%imperial%';
update preferences set value = '800' where name = 'handling_fee' and owner_id = 2;