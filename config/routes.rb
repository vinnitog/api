Rails.application.routes.draw do
 get 'api/get/proposicoes' => 'api#get_proposicoes'
 get 'api/get/clients' => 'api#get_clients'
 get 'api/get/client/:id' => 'api#get_client' 

 get 'api/get/products' => 'api#get_products'
 get 'api/get/product/:id' => 'api#get_product'

 get 'api/get/brands' => 'api#get_brands'
 get 'api/get/brand/:id' => 'api#get_brand'

 get 'api/get/orders' => 'api#get_orders'
 get 'api/get/order/:id' => 'api#get_order'

 match 'api/post/client' => 'api#post_client', via: [:post, :get]
 match 'api/post/product' => 'api#post_product', via: [:post, :get]
 match 'api/post/brand' => 'api#post_brand', via: [:post, :get]
 match 'api/post/order' => 'api#post_order', via: [:post, :get]

 match 'api/put/client/:id' => 'api#put_client', via: [:put, :get]
 match 'api/put/product/:id' => 'api#put_product', via: [:put, :get]
 match 'api/put/brand/:id' => 'api#put_brand', via: [:put, :get]
 match 'api/put/order/:id' => 'api#put_order', via: [:put, :get]

 match 'api/delete/client/:id' => 'api#delete_client', via: [:delete, :get]
 match 'api/delete/product/:id' => 'api#delete_product', via: [:delete, :get]
 match 'api/delete/brand/:id' => 'api#delete_brand', via: [:delete, :get]
 match 'api/delete/order/:id' => 'api#delete_order', via: [:delete, :get]

end
