require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test " add new order " do 
    params={'name'=>'Test','adress'=>'dt','cart'=>[1],'sub'=>10, 'date'=>Time.now}   
    assert Order.new.add(params)   
  end
end
