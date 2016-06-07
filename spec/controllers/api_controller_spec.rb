require 'rails_helper'

RSpec.describe ApiController, type: :controller do

	describe 'Get Methods' do
		it 'get clients' do
			get :get_clients
		 	expect(response).to have_http_status(200)
		end
		it 'get products' do
			get :get_products
		 	expect(response).to have_http_status(200)
		end
		it 'get brands' do
			get :get_brands
		 	expect(response).to have_http_status(200)
		end
		it 'get orders' do
			get :get_orders
		 	expect(response).to have_http_status(200)
		end
	end

	describe 'Post Methods' do
		it 'post clients' do
			post :post_client
		 	expect(response).to have_http_status(200)
		end
		it 'post products' do
			post :post_product
		 	expect(response).to have_http_status(200)
		end
		it 'post brands' do
			post :post_brand
		 	expect(response).to have_http_status(200)
		end
		it 'post orders' do
			post :post_order
		 	expect(response).to have_http_status(200)
		end
	end
end
