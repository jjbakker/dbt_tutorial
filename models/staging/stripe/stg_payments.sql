with payment AS
(select * from raw.stripe.payment)
select * from payment