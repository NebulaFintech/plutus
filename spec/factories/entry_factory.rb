FactoryBot.define do
  factory :entry, :class => Plutus::Entry do
    description { 'factory description' }
    factory :entry_with_credit_and_debit, :class => Plutus::Entry do
      after(:build) do |t|
        t.credit_amounts << FactoryBot.build(:credit_amount, :entry => t)
        t.debit_amounts << FactoryBot.build(:debit_amount, :entry => t)
      end
    end
  end
end
