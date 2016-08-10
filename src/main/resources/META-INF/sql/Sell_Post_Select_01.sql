select * from sell_post join province
on sell_post.post_province = province.province_id
join district on sell_post.post_district = district.district_id
order by post_id desc limit 6;