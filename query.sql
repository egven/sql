select ProductId, count(*) Cases from Sales a join
(select  min(Id) Id from Sales group by DateCreated, CustomerId) b 
on a.Id = b.Id
group by ProductId