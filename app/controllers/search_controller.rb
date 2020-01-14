class SearchController < ApplicationController
  before_action :set_page_options

  def index
    @products = text_search
  end

  def set_page_options
    set_meta_tags title: 'Search'
    add_breadcrumb 'Home', path: root_path, title: 'Home'
  end

  def search_params
    params.permit(:query)
  end

  def text_search
    search_text = ['%', search_params[:query].strip, '%'].join
    Product.where('title LIKE  ?', search_text)
  end
end
