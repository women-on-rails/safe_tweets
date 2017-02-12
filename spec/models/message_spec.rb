require 'rails_helper'

RSpec.describe Message, type: :model do
    let(:message) { FactoryGirl.create(:message) }
    let(:empty_message) { FactoryGirl.build(:empty_message) }
    let(:troll_message) { FactoryGirl.create(:troll_message) }
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

    it "is safe" do
        expect(message.safe?).to be_truthy
    end

    it "is not safe" do
        expect(troll_message.safe?).not_to be_truthy
    end

    context "querying all messages" do
        it "filters a troll message" do
            safe_msg = Message.safe
            expect(safe_msg.include?(troll_message)).to be_falsy
        end

        it "returns only safe messages" do
            safe_msg = Message.safe
            expect(safe_msg.include?(message)).to be_truthy
        end
    end


end
