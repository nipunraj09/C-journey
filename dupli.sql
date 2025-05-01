select * from RSSBmaster where [Roll No] in (Select [Roll No] from RSSBmaster group by [Roll No] having count(*)>1);
