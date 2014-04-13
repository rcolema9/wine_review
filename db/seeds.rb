# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(name:'Beringer Chardonnay', year:2012, winery:'Beringer', country:'United States', varietal:'Chardonnay')
Wine.create(name:'Veramar Rooster Red', year:2006, winery:'Veramar', country:'United States', varietal:'Cabernet Franc')
Wine.create(name:'Mondavi Cabernet Sauvignon', year:2000, winery:'Mondavi', country:'United States', varietal:'Cabernet Sauvignon')
Wine.create(name:'Kendall Jackson Sauvignon Blanc', year:2010, winery:'Kendall Jackson', country:'United States', varietal:'Chardonnay')
Wine.create(name:'Luc Pirlet Merlot', year:1995, winery:'Luc Pirlet', country:'France', varietal:'Merlot')
Wine.create(name:'Mallee Point Shiraz', year:2006, winery:'Casella', country:'Australia', varietal:'Syrah/Shiraz')