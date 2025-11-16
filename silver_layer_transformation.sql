SELECT 
    id, 
    title, 
    CASE 
        WHEN LOWER(title) LIKE '%iphone%' THEN 'Apple'
        WHEN LOWER(title) LIKE '%macbook%' THEN 'Apple'
        WHEN LOWER(title) LIKE '%samsung%' THEN 'Samsung'
        WHEN LOWER(title) LIKE '%alienware%' THEN 'Dell'
        WHEN LOWER(title) LIKE '%nikon%' THEN 'Nikon'
        WHEN LOWER(title) LIKE '%ps5%' THEN 'Sony'
        ELSE ''
    END AS brand,

    CASE 
        WHEN LOWER(title) LIKE '%iphone 16%' OR LOWER(title) LIKE '%iphone16%' THEN 'IPhone 16'
        WHEN LOWER(title) LIKE '%16 pro%' THEN 'IPhone 16 Pro'
        WHEN LOWER(title) LIKE '%16 pro max%' OR LOWER(title) LIKE '%16 promax%' THEN 'IPhone 16 Pro Max'
        WHEN LOWER(title) LIKE '%macbook pro%' OR LOWER(title) LIKE '%macbookpro%' THEN 'Macbook Pro'
        WHEN LOWER(title) LIKE '%macbook air%' OR LOWER(title) LIKE '%macbookair%' THEN 'Macbook Air'
        WHEN LOWER(title) LIKE '%samsung s25%' OR LOWER(title) LIKE '%samsungs25%' THEN 'Samsung S25'
        WHEN LOWER(title) LIKE '%samsung s24%' OR LOWER(title) LIKE '%samsungs24%' THEN 'Samsung S24'
        WHEN LOWER(title) LIKE '%samsung s23%' OR LOWER(title) LIKE '%samsungs23%' THEN 'Samsung S23'
        WHEN LOWER(title) LIKE '%samsung s22%' OR LOWER(title) LIKE '%samsungs22%' THEN 'Samsung S22'
        WHEN LOWER(title) LIKE '%nikon d3500%' OR LOWER(title) LIKE '%nikond3500%' THEN 'Nikon D3500'
        WHEN LOWER(title) LIKE '%nikon d5600%' OR LOWER(title) LIKE '%nikond5600%' THEN 'Nikon D5600'
        WHEN LOWER(title) LIKE '%nikon d7500%' OR LOWER(title) LIKE '%nikond7500%' THEN 'Nikon D7500'
        WHEN LOWER(title) LIKE '%nikon d780%' OR LOWER(title) LIKE '%nikond780%' THEN 'Nikon D780'
        WHEN LOWER(title) LIKE '%nikon z5%' OR LOWER(title) LIKE '%nikonz5%' THEN 'Nikon Z5'
        WHEN LOWER(title) LIKE '%nikon z6ii%' OR LOWER(title) LIKE '%nikonz6ii%' THEN 'Nikon Z6II'
        WHEN LOWER(title) LIKE '%nikon z7ii%' OR LOWER(title) LIKE '%nikonz7ii%' THEN 'Nikon Z7II'
        ELSE ''
    END AS model,

    CASE 
        WHEN LOWER(title) LIKE '%iphone 16%' OR LOWER(title) LIKE '%iphone16%' THEN 'IPhone 16'
        WHEN LOWER(title) LIKE '%samsung s25%' OR LOWER(title) LIKE '%samsungs25%' THEN 'Samsung'
        WHEN LOWER(title) LIKE '%alienware%' THEN 'Alienware'
        WHEN LOWER(title) LIKE '%ps5%' THEN 'PS5'
        ELSE ''
    END AS product,

    CASE 
        WHEN LOWER(title) LIKE '%64gb%' OR LOWER(title) LIKE '%64 gb%' THEN '64GB'
        WHEN LOWER(title) LIKE '%32gb%' OR LOWER(title) LIKE '%32 gb%' THEN '32GB'
        WHEN LOWER(title) LIKE '%16gb%' OR LOWER(title) LIKE '%16 gb%' THEN '16GB'
        WHEN LOWER(title) LIKE '%128gb%' OR LOWER(title) LIKE '%128 gb%' THEN '128GB'
        WHEN LOWER(title) LIKE '%256gb%' OR LOWER(title) LIKE '%256 gb%' THEN '256GB'
        WHEN LOWER(title) LIKE '%512gb%' OR LOWER(title) LIKE '%512 gb%' THEN '512GB'
        ELSE ''
    END AS storage,

    timestamp, 
    price, 
    currency, 
    condition, 
    seller, 
    url
FROM silver_layer_data;
