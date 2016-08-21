class ApiController < ApplicationController
require 'json'
include HTTParty

  def get_proposicoes
    @response = HTTParty.get('http://www.camara.leg.br/SitCamaraWS/Proposicoes.asmx/ListarProposicoesVotadasEmPlenario?ano=2016&tipo=')
  end

  def get_clients
    @response = HTTParty.get('http://localhost:3000/clients.json')
  end

  def get_client
  	url = 'http://localhost:3000/clients/' + params[:id] + '.json'
    @response = HTTParty.get(url)
  end

  def get_products
    @response = HTTParty.get('http://localhost:3000/products.json')
  end

  def get_product
  	url = 'http://localhost:3000/products/' + params[:id] + '.json'
    @response = HTTParty.get(url)
  end

  def get_brands
    @response = HTTParty.get('http://localhost:3000/brands.json')
  end

  def get_brand
    url = 'http://localhost:3000/brands/' + params[:id] + '.json'
    @response = HTTParty.get(url)
  end

  def get_orders
    @response = HTTParty.get('http://localhost:3000/orders.json')
  end

  def get_order
    url = 'http://localhost:3000/orders/' + params[:id] + '.json'
    @response = HTTParty.get(url)
  end

  def post_client
    @options = {client:{name: 'post client', address: 'rua teste, bairro teste, nº1', tel: '(14)3433-2222'}}
    @response = HTTParty.post('http://localhost:3000/clients.json', body: @options)
  end

  def post_product
    @options = {product:{name: 'post product', quantity: 50, price: 10.50}, brand:{brand_id: 1}}
    @response = HTTParty.post('http://localhost:3000/products.json', body: @options)
  end

  def post_brand
    @options = {brand:{name: 'post brand', brand_type: '50L'}}
    @response = HTTParty.post('http://localhost:3000/brands.json', body: @options)
  end

  def post_order
    @options = {order:{date: '10/10/2016', quantity: 50, value: 10.50}, product:{product_id: 1}}
    @response = HTTParty.post('http://localhost:3000/orders.json', body: @options)
  end

  def put_client
    url = 'http://localhost:3000/clients/' + params[:id] + '.json'
    @options = {client:{name: 'put client', address: 'rua teste, bairro teste, nº1', tel: '(14)3333-2222'}}
    @response = HTTParty.put(url, body: @options)
  end

  def put_product
    url = 'http://localhost:3000/products/' + params[:id] + '.json'
    @options = {product:{name: 'put product', quantity: 50, price: 10.50}, brand:{brand_id: 1}}
    @response = HTTParty.put(url, body: @options)
  end

  def put_brand
    url = 'http://localhost:3000/brands/' + params[:id] + '.json'
    @options = {brand:{name: 'put brand', brand_type: '50L'}}
    @response = HTTParty.put(url, body: @options)
  end

  def delete_client
    url = 'http://localhost:3000/clients/' + params[:id] + '.json'
    @response = HTTParty.delete(url)
  end

  def delete_product
    url = 'http://localhost:3000/products/' + params[:id] + '.json'
    @response = HTTParty.delete(url)
  end

  def delete_brand
    url = 'http://localhost:3000/brands/' + params[:id] + '.json'
    @response = HTTParty.delete(url)
  end

  def delete_order
    url = 'http://localhost:3000/orders/' + params[:id] + '.json'
    @response = HTTParty.delete(url)
  end
end
