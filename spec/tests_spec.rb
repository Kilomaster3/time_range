# frozen_string_literal: true

require_relative '../lib/solution'

describe Intervals do
  context 'Should improved time range array' do
    it 'should return improved time array' do
      tm = Intervals.new([%w[10:00 10:20], %w[10:40 11:00], %w[10:50 12:00], %w[12:00 13:00], %w[10:00 10:20]])
      tm.optimize_interval
      answer = tm.intervals
      expect(answer).to eq [%w[10:00 10:20], %w[10:40 13:00]]
    end

    it '' do
      tm = Intervals.new([%w[10:00 10:20], %w[10:15 12:00], %w[10:50 13:30], %w[12:00 13:00], %w[10:00 10:20]])
      tm.optimize_interval
      answer = tm.intervals
      expect(answer).to eq [%w[10:00 13:30]]
    end

    it '' do
      tm = Intervals.new([%w[10:00 10:20], %w[10:30 10:50], %w[10:30 10:40]])
      tm.optimize_interval
      answer = tm.intervals
      expect(answer).to eq [%w[10:00 10:20]]
    end

    it '' do
      tm = Intervals.new([%w[12:00 13:30], %w[10:00 10:20], %w[09:30 10:20], %w[09:35 10:45]])
      tm.optimize_interval
      answer = tm.intervals
      expect(answer).to eq [%w[09:30 10:45], %w[12:00 13:30]]
    end

    it '' do
      tm = Intervals.new([%w[10:00 10:30], %w[10:00 10:20], %w[09:30 10:20], %w[09:20 10:35]])
      tm.optimize_interval
      answer = tm.intervals
      expect(answer).to eq [%w[09:20 10:35]]
    end
  end
end
