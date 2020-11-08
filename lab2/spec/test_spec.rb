# frozen_string_literal: true

require 'rspec'
require_relative '../csv_reader'

RSpec.describe CSVReader do
  describe '.csv calculate' do
    # NOTE: this test file will be called from root directory.
    let(:csv) { CSVReader.new('lab2/spec/test.csv') }
    array = [12, 50, 72, 89, 33, 13, -1, 0, 124]
    context 'Search min' do
      it { expect(csv.min(array)).to eq(-1) }
    end

    context 'Search max' do
      it { expect(csv.max(array)).to eq 124 }
    end

    context 'Calculate mean' do
      it { expect(csv.mean(array)).to eq 65.33 }
    end

    context 'Calculate correct sample variance' do
      it { expect(csv.sample_variance(array)).to eq 3261.89 }
    end
  end
end
