require_relative '../processor.rb'

Rspec.describe Processor do

  let(:destinations) {

  }

  let(:taxonomy) {
    
  }

  let(:output_path) {
    'my/local/path'
  }

  let(:processor) { Processor.new(destinations, taxonomy, output_path) }

  describe "#initialize" do
    it "responds with default parameters :destinations, :taxonomy, :output_path" do
      processor.should_recieve(destinations, taxonomy, output_path)
    end
  end
end
