class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/owners" do
    owners = Owner.all
    owners.to_json(include: :items)
  end
  post "/owners" do
    owner = Owner.create(name: params[:name])
    owner.to_json
  end

  delete "/owners/:id" do
    owner = Owner.find(params[:id])
    owner.destroy
    owner.to_json
  end

  get "/items" do
    items = Item.all
    items.to_json(include: :owner)
  end

  patch "/items/:id" do
    item = Item.find(params[:id])
    item.update(item: params[:item], room: params[:room], category: params[:category], quantity: params[:quantity], owner_id: params[:owner_id] )
    item.to_json(include: :owner)
  end

  post "/items" do
    item = Item.create(item: params[:item], room: params[:room], category: params[:category], quantity: params[:quantity], owner_id: params[:owner_id] )
    item.to_json(include: :owner)
  end

  delete "/items/:id" do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

end
