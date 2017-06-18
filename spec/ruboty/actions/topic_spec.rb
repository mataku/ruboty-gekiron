require 'spec_helper'

describe Ruboty::Gekiron::Actions::Topic do
  let(:gekiron_topic) { described_class.new(message) }
  let(:first_letter) { 'あ' }
  let(:topic) { 'かっこいい言い回し' }
  let(:message) do
    {
      first_letter: first_letter,
      topic: topic
    }
  end
  
  describe '#call' do
    context 'Topics yaml file exists' do
      before do
        allow(gekiron_topic).to receive(:first_letter).and_return(first_letter)
        allow(gekiron_topic).to receive(:topic).and_return(topic)
      end

      it do
        expect(message).to receive(:reply).with(
          "「#{first_letter}」から始まる、#{topic}は？"
        )
        gekiron_topic.call
      end
    end
    
    context 'Topics yaml file does not exist' do
      before do
        allow(gekiron_topic).to receive(:first_letter).and_return(first_letter)
        allow(gekiron_topic).to receive(:topic).and_return(nil)
      end

      it do
        expect(message).to receive(:reply).with(
          'Topic does not exist :cry: (default path: ./config/topics.yml)'
        )
        gekiron_topic.call
      end
    end
  end
end
