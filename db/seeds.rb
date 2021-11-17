# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

# Enero
enero = [
    29069.39,
    29068.46,
    29067.52,
    29066.58,
    29065.64,
    29064.70,
    29063.76,
    29062.83,
    29061.89,
    29064.70,
    29067.51,
    29070.32,
    29073.13,
    29075.93,
    29078.74,
    29081.55,
    29084.36,
    29087.18,
    29089.99,
    29092.80,
    29095.61,
    29098.42,
    29101.23,
    29104.04,
    29106.86,
    29109.67,
    29112.48,
    29115.30,
    29118.11,
    29120.92,
    29123.74
]

# Febrero
febrero = [
    29126.55,
    29129.37,
    29132.18,
    29135.00,
    29137.81,
    29140.63,
    29143.44,
    29146.26,
    29149.08,
    29156.34,
    29163.61,
    29170.87,
    29178.14,
    29185.41,
    29192.68,
    29199.96,
    29207.23,
    29214.51,
    29221.79,
    29229.07,
    29236.35,
    29243.64,
    29250.92,
    29258.21,
    29265.50,
    29272.79,
    29280.09,
    29287.38
]

months = [enero, febrero]

months.length.times do |m|
    month = m + 1
    months[m].length.times do |d|
        day = d + 1 
        price = months[m][d]

        uf_prices = InflationAdjust.create([
            {day: Date.new(2021, month, day),
            price: price}
        ])
    end
end
