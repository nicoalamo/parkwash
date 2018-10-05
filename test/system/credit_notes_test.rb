require "application_system_test_case"

class CreditNotesTest < ApplicationSystemTestCase
  setup do
    @credit_note = credit_notes(:one)
  end

  test "visiting the index" do
    visit credit_notes_url
    assert_selector "h1", text: "Credit Notes"
  end

  test "creating a Credit note" do
    visit credit_notes_url
    click_on "New Credit Note"

    fill_in "Credit Note Creation Date", with: @credit_note.credit_note_creation_date
    fill_in "Credit Note Informed Gross Amount", with: @credit_note.credit_note_informed_gross_amount
    fill_in "Credit Note Sii Status", with: @credit_note.credit_note_sii_status
    fill_in "Receipt", with: @credit_note.receipt_id
    click_on "Create Credit note"

    assert_text "Credit note was successfully created"
    click_on "Back"
  end

  test "updating a Credit note" do
    visit credit_notes_url
    click_on "Edit", match: :first

    fill_in "Credit Note Creation Date", with: @credit_note.credit_note_creation_date
    fill_in "Credit Note Informed Gross Amount", with: @credit_note.credit_note_informed_gross_amount
    fill_in "Credit Note Sii Status", with: @credit_note.credit_note_sii_status
    fill_in "Receipt", with: @credit_note.receipt_id
    click_on "Update Credit note"

    assert_text "Credit note was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit note" do
    visit credit_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit note was successfully destroyed"
  end
end
