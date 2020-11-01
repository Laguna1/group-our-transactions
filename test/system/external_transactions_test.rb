require 'application_system_test_case'

class ExternalTransactionsTest < ApplicationSystemTestCase
  setup do
    @external_transaction = external_transactions(:one)
  end

  test 'visiting the index' do
    visit external_transactions_url
    assert_selector 'h1', text: 'External Transactions'
  end

  test 'creating a External transaction' do
    visit external_transactions_url
    click_on 'New External Transaction'

    click_on 'Create External transaction'

    assert_text 'External transaction was successfully created'
    click_on 'Back'
  end

  test 'updating a External transaction' do
    visit external_transactions_url
    click_on 'Edit', match: :first

    click_on 'Update External transaction'

    assert_text 'External transaction was successfully updated'
    click_on 'Back'
  end

  test 'destroying a External transaction' do
    visit external_transactions_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'External transaction was successfully destroyed'
  end
end
