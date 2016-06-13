require 'rails_helper'

RSpec.describe Post, type: :model do
  
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }
  
  describe "attributes" do
    it "has title and body attributes" do
      #expect(post).to have_attributes(title: title, body: body)
      expect(post).to have_attributes(title: post.title, body: post.body)
    end
  end # describe "attributes" do
 end
