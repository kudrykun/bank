# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.delete_all
DepositType.delete_all
Holder.delete_all


Holder.create!(surename: 'Сливочный',
               name:'Святослав',
               passport:'6430885393')
Holder.create!(surename: 'Горелый',
               name:'Ярослав',
               passport:'2293072829')
Holder.create!(surename: 'Сочный',
               name:'Сергей',
               passport:'4792760147')
Holder.create!(surename: 'Соленая',
               name:'Алёна',
               passport:'2608254302')
Holder.create!(surename: 'Усанди',
               name:'Андрей',
               passport:'5955581699')
Holder.create!(surename: 'Василенко',
               name:'Сергей',
               passport:'9617712486')
Holder.create!(surename: 'Королёв',
               name:'Павел',
               passport:'5613853023')
Holder.create!(surename: 'Паркер',
               name:'Питер',
               passport:'8105970650')

DepositType.create!(title: 'Накопительный',
                    rate: 3.5,
                    period: 2)
DepositType.create!(title: 'Срочный',
                    rate:6,
                    period: 1)
DepositType.create!(title: 'Сберегательный',
                    rate: 3,
                    period: 10)


Account.create!(balance:10000,
                deposit_type: DepositType.find_by(title: 'Накопительный'),
                holder: Holder.find_by(surename: 'Сливочный'))
Account.create!(balance:10000,
                deposit_type: DepositType.find_by(title: 'Срочный'),
                holder: Holder.find_by(surename: 'Горелый'))
Account.create!(balance:10000,
                deposit_type: DepositType.find_by(title: 'Сберегательный'),
                holder: Holder.find_by(surename: 'Сочный'))
Account.create!(balance:10000,
                deposit_type: DepositType.find_by(title: 'Сберегательный'),
                holder: Holder.find_by(surename: 'Соленая'))
Account.create!(balance:20000,
                deposit_type: DepositType.find_by(title: 'Накопительный'),
                holder: Holder.find_by(surename: 'Усанди'))
Account.create!(balance:20000,
                deposit_type: DepositType.find_by(title: 'Срочный'),
                holder: Holder.find_by(surename: 'Василенко'))
Account.create!(balance:20000,
                deposit_type: DepositType.find_by(title: 'Срочный'),
                holder: Holder.find_by(surename: 'Королёв'))
Account.create!(balance:1000000,
                deposit_type: DepositType.find_by(title: 'Сберегательный'),
                holder: Holder.find_by(surename: 'Паркер'))
Account.create!(balance:50000,
                deposit_type: DepositType.find_by(title: 'Накопительный'),
                holder: Holder.find_by(surename: 'Сливочный'))
Account.create!(balance:1000,
                deposit_type: DepositType.find_by(title: 'Сберегательный'),
                holder: Holder.find_by(surename: 'Горелый'))
Account.create!(balance:80000,
                deposit_type: DepositType.find_by(title: 'Срочный'),
                holder: Holder.find_by(surename: 'Сочный'))
Account.create!(balance:30000,
                deposit_type: DepositType.find_by(title: 'Накопительный'),
                holder: Holder.find_by(surename: 'Соленая'))