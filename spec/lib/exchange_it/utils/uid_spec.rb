# frozen_string_literal: true

RSpec.describe ExchangeIt::Utils::Uid do
  let(:dummy) { Class.new { include ExchangeIt::Utils::Uid }.new } # таким образом подключили модуль и подцепили его в let
  # Class.new { include ExchangeIt::Utils::Uid } - 'эта часть создаст сам класс как таковой, + new уже инстацирует его'

  describe '#hash' do # так записываем если мы что то хотим сгруппировать в одну группу
    it 'returns nil when no args were given' do
      expect(dummy.hash).to be_nil # expect(dummy.hash) == nil?
    end

    it 'returns string when at least 1 arg was given' do
      expect(dummy.hash('str', 'str2')).to be_an_instance_of(String)
    end
  end
end
