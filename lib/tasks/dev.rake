namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os tipos de contato..."
    
      kinds = %w(Amigo Comercial Conhecido)

      kinds.each do |k|
        Kind.create!(
          description: k
        )
      end
    puts "Cadastrando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
        kind: Kind.all.sample
      )
    end

  end

end
