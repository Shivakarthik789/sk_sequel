select char_length('john Doe','bob white') from orders; -- we cant use mutliple strings in single statement instead we have to use union all

select 'john doe' ,char_length('john doe')
union all
select 'alice brown', char_length('alice brown')-- mutliple char length
union all 
select  'bob white' as string , char_length ('bob white') as bob_length;