class IndexController < ApplicationController

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
  end
end
