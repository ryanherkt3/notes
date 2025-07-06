require "test_helper"

class NoteTest < ActiveSupport::TestCase
  test "should not save note with no title or content" do
    note = Note.new
    assert_not note.save
  end

  test "should not save note with no title" do
    note = Note.new(content: "hi there")
    assert_not note.save
  end

  test "should not save note with no content" do
    note = Note.new(title: "hello")
    assert_not note.save
  end

  test "should save note" do
    note = Note.new(title: "hello", content: "hi there")
    assert note.save
  end
end
