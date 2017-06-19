require 'spec_helper'

describe Ruboty::Handlers::Gekiron do  
  before do
    allow_any_instance_of(topic).to receive(:gekiron_topic).and_return(gekiron_topic)
  end

  let(:ruboty) { Ruboty::Robot.new }
  let(:topic) { Ruboty::Gekiron::Actions::Topic }
  let(:from) { 'kota' }
  let(:to) { '#general' }
  let(:gekiron_topic) { "「あ」から始まる、イケてる言葉は？" }

  let(:reply_data) do
    {
      body: gekiron_topic,
      from: to,
      to: from,
      original: {
        body: said,
        from: from,
        robot: ruboty,
        to: to
      }
    }
  end

  describe '#call' do
    context 'valid word with name prefix' do
      let(:said) { '@ruboty gekiron' }

      it 'returns conversation topic' do
        expect(ruboty).to receive(:say).with(reply_data)
        ruboty.receive(body: said, from: from, to: to)
      end
    end

    context 'valid word without name prefix' do
      let(:said) { 'gekiron' }
      
      it 'returns conversation topic' do
        expect(ruboty).to receive(:say).with(reply_data)
        ruboty.receive(body: said, from: from, to: to)
      end
    end

    context 'invalid word without name prefix' do
      let(:said) { '激論' }

      it 'should not return conversation topic' do
        expect(ruboty).not_to receive(:say)
        ruboty.receive(body: said, from: from, to: to)
      end
    end
  end
end
