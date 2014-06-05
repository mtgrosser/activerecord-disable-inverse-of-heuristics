# encoding: utf-8

require_relative '../test_helper'

class InverseOfTest < ActiveSupport::TestCase

  setup do
    make = Make.create!(name: 'Opel')
    make.cars.create!(model: 'Opel Mantra Yellow')
    make.cars.create!(model: 'Opel Mantra Black')
  end
  
  test 'Object instances are not idenical' do
    make = Make.first!
    car_make_object_ids = make.cars.to_a.map(&:make).map(&:object_id)
    assert_equal 2, car_make_object_ids.uniq.size
    assert_equal false, car_make_object_ids.include?(make.object_id)
  end

end
