FactoryBot.define do
  factory :register do
    name { Faker::Name.name }
    date_register { Faker::Date.between(from: '2010-01-01', to: '2020-11-30') }
    cpf { Faker::Number.number(digits: 11) }
    rg { Faker::Number.number(digits: 7) }
    birth { Faker::Date.between(from: '1961-01-01', to: '1990-11-30') }
    type_plan { [:titular, :dependente].sample }
    status { [:ativo, :desativado].sample }
    parent_id { nil }
  end
end
