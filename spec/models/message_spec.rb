require 'rails_helper'

RSpec.describe Message, type: :model do
    let(:message) { FactoryGirl.build(:message) }
    let(:empty_message) { FactoryGirl.build(:empty_message) }
    context "when fields are empty" do
        it "should not be valid" do
            expect(empty_message).not_to be_valid
        end
    end

    context "when fields are full" do 
        it "should be valid" do
            expect(message).to be_valid
        end

        it "should have an author" do
            msg = FactoryGirl.build_stubbed(:message, author: "")
            expect(msg).not_to be_valid
        end

        it "should have a slug author" do 
            msg = FactoryGirl.build_stubbed(:message, author_slug: "")
            expect(msg).not_to be_valid
        end

        it "should have content" do
            msg = FactoryGirl.build_stubbed(:message, content: "")
            expect(msg).not_to be_valid
        end
    end

end
