SELECT
    *
FROM 
    {{ ref('fct_reviews') }} r
INNER JOIN 
    {{ ref('dim_listings_cleansed') }} l
USING (listing_id)
WHERE DATE(r.review_date) <= DATE(l.created_at)