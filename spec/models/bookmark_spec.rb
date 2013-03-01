require 'spec_helper'

describe Bookmark do
  let!(:title) { FactoryGitl.build(:title) }
  let!(:bookmark) { FactoryGirl.build(:bookmark, titles: [])}
  
  it 'is not valid without a title' do
    bookmark.should_not be_valid
  end
    
  it 'is valid with a title' do
    bookmark.titles << title
    bookmark.should be_valid
  end
end
