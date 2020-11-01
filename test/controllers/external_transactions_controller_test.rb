require 'test_helper'

class ExternalTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_transaction = external_transactions(:one)
  end

  test 'should get index' do
    get external_transactions_url
    assert_response :success
  end

  test 'should get new' do
    get new_external_transaction_url
    assert_response :success
  end

  test 'should create external_transaction' do
    assert_difference('ExternalTransaction.count') do
      post external_transactions_url, params: { external_transaction: {} }
    end

    assert_redirected_to external_transaction_url(ExternalTransaction.last)
  end

  test 'should show external_transaction' do
    get external_transaction_url(@external_transaction)
    assert_response :success
  end

  test 'should get edit' do
    get edit_external_transaction_url(@external_transaction)
    assert_response :success
  end

  test 'should update external_transaction' do
    patch external_transaction_url(@external_transaction), params: { external_transaction: {} }
    assert_redirected_to external_transaction_url(@external_transaction)
  end

  test 'should destroy external_transaction' do
    assert_difference('ExternalTransaction.count', -1) do
      delete external_transaction_url(@external_transaction)
    end

    assert_redirected_to external_transactions_url
  end
end
