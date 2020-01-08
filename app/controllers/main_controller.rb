class MainController < ApplicationController

  before_action :set_page_options

  def index
    @brands = Brand.limit(3)
    @hits   = Product.all.limit(8)
  end

  def set_page_options
    @page_title       = 'Beer Market'
    @page_description = 'Beer'
    @page_keywords    = 'Man Woman Young'
  end
end
