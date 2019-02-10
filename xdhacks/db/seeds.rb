# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.destroy_all

Patient.create!([{
                     gender: "female",
                     latitude: 65.7,
                     longitude: -103.4,
                     address_one: "928 Beatty Street",
                     insurance: true,
                     symptoms: "nausea"
                 },
                     {
                         gender: "male",
                         latitude: 65.7,
                         longitude: -103.4,
                         address_one: "928 Beatty Street",
                         insurance: false,
                         symptoms: "nausea, vomiting"

                     }
                    ])

p "Created #{Patient.count} patients"

Clinic.destroy_all

Clinic.create!([{

                     doctors_folder: "clinic-one/",
                     latitude: 65.7,
                     longitude: -103.4,
                     hours: "0900, 1600",
                     status: "busy"
                 },
                 {
                     doctors_folder: "clinic-tw0/",
                     latitude: 65.7,
                     longitude: -103.9,
                     hours: "0800, 1600",
                     status: "medium"

                 }
                ])

p "Created #{Clinic.count} clinics"

