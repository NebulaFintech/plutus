FactoryBot.define do
  factory :amount, :class => Plutus::Amount do
    amount { BigDecimal('473') }
    association :entry, :factory => :entry_with_credit_and_debit
    association :account, :factory => :asset
  end

  factory :credit_amount, :class => Plutus::CreditAmount do
    amount { BigDecimal('473') }
    association :entry, :factory => :entry_with_credit_and_debit
    association :account, :factory => :revenue
  end

  factory :debit_amount, :class => Plutus::DebitAmount do
    amount { BigDecimal('473') }
    association :entry, :factory => :entry_with_credit_and_debit
    association :account, :factory => :asset
  end
end
