require "test_helper"

class ChargeOrderJobTest < ActiveJob::TestCase
  
  def perform(order,pay_type_params)
    order.charge!(pay_type_params)
  end
end
