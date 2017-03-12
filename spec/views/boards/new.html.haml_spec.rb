require 'rails_helper'

RSpec.describe "boards/new", type: :view do
  before(:each) do
    assign(:board, Board.new(
      :name => "MyString"
    ))
  end

  it "renders new board form" do
    render

    assert_select "form[action=?][method=?]", boards_path, "post" do

      assert_select "input#board_name[name=?]", "board[name]"
    end
  end
end
