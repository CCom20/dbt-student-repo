WITH fct_reviews AS (
    select * from {{ ref(src_reviews) }}
    
)
select * from fct_reviews
where review_text is not null