require 'test_helper'

class ViewingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @viewing = viewings(:one)
  end

  test 'should get index' do
    get viewings_url, as: :json
    assert_response :success
  end

  test 'should create viewing' do
    assert_difference('Viewing.count') do
      post viewings_url, params: {
        viewing: {
          date: @viewing.date,
          house_id: @viewing.house_id,
          time: @viewing.time,
          user_id: @viewing.user_id
        }
      }, as: :json
    end

    assert_response 201
  end

  test 'should show viewing' do
    get viewing_url(@viewing), as: :json
    assert_response :success
  end

  test 'should update viewing' do
    patch viewing_url(@viewing), params: {
      viewing: {
        date: @viewing.date,
        house_id: @viewing.house_id,
        time: @viewing.time,
        user_id: @viewing.user_id
      }
    }, as: :json
    assert_response 200
  end

  test 'should destroy viewing' do
    assert_difference('Viewing.count', -1) do
      delete viewing_url(@viewing), as: :json
    end

    assert_response 204
  end
end
