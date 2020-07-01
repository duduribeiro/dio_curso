require "test_helper"

class FirstTest < ActiveSupport::TestCase
  test "esse é primeiro teste" do
    variavel = "Cadu"

    assert_equal "Cadu", variavel
  end
end
