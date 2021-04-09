# Companies creation
storefronts = ['Sasol', 'Croda', 'Lonza', 'Givaudan', 'BASF', 'Roquette', 'Dupont', 'DSM', 'allnex']

storefronts.each do |storefront_name|
  Storefront.create(name: storefront_name)
end

# Brands creation
brands = {
  sasol: ['Isofol', 'Marlican', 'Sasolwax'],
  croda: ['Crodafos', 'Incrosoft', 'Tween'],
  lonza: ['Natrulon', 'ViscUp', 'Biocell'],
  givaudan: ['Primetime Flavours'],
  basf: ['Borosil', 'Basfcin'],
  roquette: ['Viten', 'Glucidex', 'Tabulose'],
  dupont: ['Rynite', 'Crastin', 'Zytel'],
  dsm: ['Elhibn', 'LipoGard', 'All-Q'],
  allnex: ['Additol', 'Ebecyril', 'Modaflow']
}

storefronts.each do |storefront|
  company = Storefront.find_by('lower(name)=?', storefront.downcase)
  brands[storefront.downcase.to_sym].each do |brand_name|
    Brand.create(name: brand_name, resource: company)
  end
end

# Products Creation
