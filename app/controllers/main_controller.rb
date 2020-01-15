class MainController < ApplicationController

  before_action :set_page_options

  def index
    @brands = Brand.limit(3)
    @hits   = Product.all.limit(8)
  end

  def set_page_options
    @page_title       = 'Smartphones Market'
    @page_description = 'Smartphones'
    @page_keywords    = 'China USA Russia'
  end
end
