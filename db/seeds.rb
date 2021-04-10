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
company_1 = Storefront.find_by(name: 'Sasol')
company_1_brand_1 = Brand.find_by(name: 'Isofol')
company_1_brand_2 = Brand.find_by(name: 'Marlican')

company_2 = Storefront.find_by(name: 'Croda')
company_2_brand_1 = Brand.find_by(name: 'Crodafos')
company_2_brand_2 = Brand.find_by(name: 'Incrosoft')

company_3 = Storefront.find_by(name: 'Lonza')
company_3_brand_1 = Brand.find_by(name: 'Natrulon')
company_3_brand_2 = Brand.find_by(name: 'ViscUp')
company_3_brand_3 = Brand.find_by(name: 'Biocell')

company_4 = Storefront.find_by(name: 'Givaudan')
company_4_brand_1 = Brand.find_by(name: 'Primetime Flavours')

company_5 = Storefront.find_by(name: 'Roquette')
company_5_brand_1 = Brand.find_by(name: 'NUTRIOSE')
company_5_brand_2 = Brand.find_by(name: 'Glucidex')

company_6 = Storefront.find_by(name: 'allnex')
company_6_brand_1 = Brand.find_by(name: 'Additol')

products_data = [
  {
    resource_id: company_1.id,
    resource_type: company_1.class.name,
    brand_id: company_1_brand_1.id,
    name: 'ISOFOL 28',
    industry: 'Coatings, Inks and Adhesives',
    markets: ['Pumps, turbines&compressors'],
    technologies: ['Fluids & Lubricants'],
    physical_form: ['solid'],
    identification_and_functionality: {
      chemical_family: ['Alcohols'],
      chemical_name: [],
      inci_names: ['Dodecylhexadecanol'],
      functions: ['chemical intermediate','coupling agent'],
      families: ['Conditioners & Emollients','Functional Additives','Surface Modifiers']
    },
    features_and_benefits: {
      benefit_claims: ['Cleaning','Color Stability','Conditioning'],
      ingredient_claims: [],
      end_use_claims: ['Conditioning','Emolliency','Solubilization'],
      origin: ['Petrochemical Synthetic']
    },
    applications_and_uses: {
      application_format: ['Lotions','Ointments'],
      fluids_and_lubricants_type: ['Metalworking Fluids'],
      home_care_applications: ['Detergents'],
      plastics_and_elastomers_end_uses: ['Personal Care','Textile Applications'],
      skin_care_applications: ['Body Creams & Lotions'],
      treatment_products: ['Ointments']
    },
    properties: { molecular_weight: ['approx. 410', 'g/mol', '600-19'],
      water_content: ['max. 0.1', 'wt. %', '-']
    },
    regulatory_and_compliance: {
      certifications_and_compliance: ['Kosher'],
      chemical_inventories: ['IECSC (China)','ISHL (Japan)','TSCA (USA)'],
      certifications: ['Kosher']
    },
    regional_availability: {regional_availability:['Global','Middle East','North America']}
  },
  {
    resource_id: company_1.id,
    resource_type: company_1.class.name,
    brand_id: company_1_brand_1.id,
    name: 'Isofol-2426s-alcohol',
    industry: 'Lubricants & Metalworking',
    markets: ['Pipes& plumbing','Printing & Packaging'],
    technologies: ['Fluids & Lubricants'],
    physical_form: ['Liquid'],
    identification_and_functionality: {
      chemical_family: ['Polyolefins','Alcohols'],
      chemical_name: ['C12-13-branched and linear','dimerized'],
      inci_names: [],
      functions: ['Coupling Agent'],
      families: ['Other Functional Additives','Performance Additives']
    },
    features_and_benefits: {
      benefit_claims: [],
      ingredient_claims: ['Biodegradable'],
      end_use_claims: ['Lubricity Cleaning'],
      origin: ['Petrochemical Synthetic']
    },
    applications_and_uses: {
      application_format: [],
      fluids_and_lubricants_type: ['Metalworking Fluids'],
      home_care_applications: ['Detergents'],
      plastics_and_elastomers_end_uses: ['Industrial Applications','Oil/Gas Applications','Personal Care'],
      skin_care_applications: [],
      treatment_products: []
    },
    properties: {
      molecular_weight: ['approx.410', 'g/mol', '600-19'],
      water_content: ['max. 0.1', 'wt. %', '-']
    },
    regulatory_and_compliance: {
      certifications_and_compliance: ['Halal','Kosher'],
      chemical_inventories: ['TSCA (USA)'],
      certifications: []
    },
    regional_availability: { 
      regional_availability: ['Africa', 'Asia Pacific', 'Europe', 'Middle East']
    }
  },
  {
    resource_id: company_1.id,
    resource_type: company_1.class.name,
    brand_id: company_1_brand_1.id,
    name: 'Isofol® 24 ALCOHOL',
    industry: 'Pumps, turbines&compressors',
    markets: ['Industrial','Paints & Coatings','Printing & Packaging'],
    technologies: ['CASE Ingredients','Cosmetic Ingredients'],
    physical_form: ['Liquid'],
    identification_and_functionality: {
      chemical_family: ['Alcohols'],
      chemical_name: ['2-decyltetradecanol'],
      inci_names: ['Decyltetradecanol'],
      functions: ['Emollient','Slip Agent'],
      families: ['Other Functional Additives','Sensorial Modifiers']
    },
    features_and_benefits: {
      benefit_claims: ['Emolliency','Thermal Stability'],
      ingredient_claims: ['Readily biodegradable'],
      end_use_claims: ['Cleaning','Thermal Stability'],
      origin: ['Petrochemical Synthetic']
    },
    applications_and_uses: {
      application_format: ['Rinse Off'],
      fluids_and_lubricants_type: [],
      home_care_applications: ['Hair Conditioner'],
      plastics_and_elastomers_end_uses: ['Personal Care','Textile Applications'],
      skin_care_applications: [],
      treatment_products: []
    },
    properties: {
      molecular_weight: ['approx. 410', 'g/mol', '600-19'],
      water_content: ['max. 0.1', 'wt. %', '-']
    },
    regulatory_and_compliance: {
      certifications_and_compliance: ['Kosher'],
      chemical_inventories: ['AICS (Australia)','CHINV (Switzerland)','DSL (Canada)','ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)','TSCA (USA)'],
      certifications: ['Kosher']
    },
    regional_availability: {
      regional_availability: ['Africa', 'Asia Pecific', 'Europe','Latin America', 'Middle East','North America']
    }
  },
  {
    resource_id: company_1.id,
    resource_type: company_1.class.name,
    brand_id: company_1_brand_1.id,
    name: 'ISOFOL 16',
    industry: ['Polymer Processing'],
    markets: ['Industrial','Paints & Coatings','Printing & Packaging'],
    technologies: ['Base Chemicals & Intermediates','CASE Ingredients','Cosmetic Ingredients','Fluids & Lubricants'],
    physical_form: ['Liquid'],
    identification_and_functionality: {
      chemical_family: ['Alcohols'],
      chemical_name: ['2-hexyldecan-1-ol'],
      inci_names: ['Hexyldecanol'],
      functions: ['chemical intermediate','coupling agent','Solvent'],
      families: ['Conditioners & Emollients','Functional Additives','Surface Modifiers','Alcohols']
    },
    features_and_benefits: {
      benefit_claims: ['Thermal Stability','Solvency','Cleaning','Color Stability','Conditioning'],
      ingredient_claims: [],
      end_use_claims: ['Conditioning','Color Stability','Excellent oxidation stability','Emolliency','Solubilization'],
      origin: ['Petrochemical Synthetic']
    },
    applications_and_uses: {
      application_format: ['Spray','Creams''Lotions','Ointments'],
      fluids_and_lubricants_type: ['Metalworking Fluids'],
      home_care_applications: ['Detergents','Household Cleaners'],
      plastics_and_elastomers_end_uses: ['Cosmetics','Personal Care','Textile Applications'],
      skin_care_applications: ['Body Creams & Lotions','Tanning Products'],
      treatment_products: ['Ointments']
    },
    properties: {
      molecular_weight: ['approx. 410', 'g/mol', '600-19'],
      water_content: ['max. 0.1', 'wt. %', '-']
    },
    regulatory_and_compliance: {
      certifications_and_compliance: [],
      chemical_inventories: ['AICS (Australia)','IECSC (China)','ISHL (Japan)','TSCA (USA)','CHINV (Switzerland)',
        'DSL (Canada)','ENCS (Japan)','KECI (Korea)','PICCS (Phillipines)'],
        certifications: []
      },
      regional_availability: {
        regional_availability:['Africa','Asia Pacific','Europe','Middle East','North America']
      }
    },
    {
      resource_id: company_1.id,
      resource_type: company_1.class.name,
      brand_id: company_1_brand_2.id,
      name: 'MARLON OS 80 H',
      industry: 'Personal Care & Pharma',
      markets: ['Automotive & Transportation','Consumer Goods','Electrical & Electronics'],
      technologies: ['Plastics'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: ['Alkyl Sulfonates'],
        chemical_name: ['2-butyloctan-1-ol'],
        inci_names: [],
        functions: ['Anionic Surfactant','Nonionic Surfactant'],
        families: ['Dispersing & Wetting Additives','Surface Protective Additives']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Biodegradable'],
        end_use_claims: [],
        origin: ['Petrochemical Synthetic']
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: ['Metalworking Fluids'],
        home_care_applications: ['Detergents'],
        plastics_and_elastomers_end_uses: ['Cosmetics','Industrial Applications','Textile Applications'],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Europe','Middle East']
      }
    },
    {
      resource_id: company_1.id,
      resource_type: company_1.class.name,
      brand_id: company_1_brand_2.id,
      name: 'MARLON AS 3',
      industry: 'Coatings, Inks and Adhesives',
      markets: ['Home & Personal Care','Industrial'],
      technologies: ['Base Chemicals & Intermediates','CASE Ingredients','Cleaning Ingredients','Fluids & Lubricants'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: ['Alkyl Sulfonates'],
        chemical_name: ['Benzenesulfonic acid, 4-C10-13-sec-alkyl derivs'],
        inci_names: [],
        functions: ['Anionic Surfactant','Chemical Intermediate','Surfactant','Wetting Agent'],
        families: ['intermediated','other functional additives','Dispersing & Wetting Additives','Surface Protective Additives']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Biodegradable'],
        end_use_claims: ['Wetting'],
        origin: ['Petrochemical Synthetic']
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: ['Metalworking Fluids'],
        home_care_applications: ['Detergents'],
        plastics_and_elastomers_end_uses: ['Cosmetics','Industrial Applications','Textile Applications','Textile Auxiliaries'],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: ['AICS (Australia)','CHINV (Switzerland)','DSL (Canada)','ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)','NECI Listed (Taiwan)','PICCS (Phillipines)']
      },
      regional_availability: {
        regional_availability: ['Asia Pacific','Africa','Europe','Middle East','North America']
      }
    },
    {
      resource_id: company_1.id,
      resource_type: company_1.class.name,
      brand_id: company_1_brand_2.id,
      name: 'MARLON ARL',
      industry: 'Household, Industrial & Institutional Cleaning',
      markets: ['Building & Construction','Home & Personal Care','Industrial'],
      technologies: ['Base Chemicals & Intermediates','CASE Ingredients','Cleaning Ingredients','Fluids & Lubricants'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: ['Alkyl Sulfonates','Polyolefins'],
        chemical_name: ['Sodium toluenesulphonate'],
        inci_names: [],
        functions: ['Anionic Surfactant','Chemical Intermediate','Emulsifier'],
        families: ['intermediated','other functional additives','Emulsifier & Demulsifiers','Rheology Modifiers & Stabilizers','Other Resins & Binders','Surface Protective Additives']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Biodegradable'],
        end_use_claims: [],
        origin: ['Petrochemical Synthetic']
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: ['Metalworking Fluids'],
        home_care_applications: ['Detergents'],
        plastics_and_elastomers_end_uses: ['Cosmetics','Industrial Applications','Textile Applications','Textile Auxiliaries'],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: ['AICS (Australia)','CHINV (Switzerland)','DSL (Canada)','EINECS(EU)','ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)','NECI Listed (Taiwan)','PICCS (Phillipines)','TSCA (USA)'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia Pacific','Africa','Europe','Middle East']
      }
    },
    {
      resource_id: company_1.id,
      resource_type: company_1.class.name,
      brand_id: company_1_brand_2.id,
      name: 'MARLON A 363',
      industry: 'Household, Industrial & Institutional Cleaning',
      markets: ['Home & Personal Care','Industrial'],
      technologies: ['Base Chemicals & Intermediates','CASE Ingredients','Cleaning Ingredients','Fluids & Lubricants'],
      physical_form: ['Paste'],
      identification_and_functionality: {
        chemical_family: ['Alkyl Sulfonates'],
        chemical_name: ['Benzenesulfonic acid, C10-13-alkyl derivs., sodium salts'],
        inci_names: [],
        functions: ['Anionic Surfactant','Chemical Intermediate','Emulsifier','Surfactants'],
        families: ['intermediates','other functional additives','Other Functional Additives','Surface Protective Additives']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Biodegradable'],
        end_use_claims: [],
        origin: ['Petrochemical Synthetic']
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: ['Metalworking Fluids'],
        home_care_applications: ['Detergents'],
        plastics_and_elastomers_end_uses: ['Industrial Applications','Textile Applications','Textile Auxiliaries'],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: ['AICS (Australia)','CHINV (Switzerland)','DSL (Canada)','ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)','PICCS (Phillipines)','TSCA (USA)'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Europe','Middle East']
      }
    },
    {
      resource_id: company_2.id,
      resource_type: company_2.class.name,
      brand_id: company_2_brand_1.id,
      name: 'Crodafos™ MCA',
      industry: [],
      markets: ['Home & Personal Care'],
      technologies: ['Cleaning Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: ['Organophosphates','Phosphate Esters','Phosphorous-based Compounds'],
        chemical_name: [],
        inci_names: [],
        functions: ['Anionic Surfactant','Emulsifier'],
        families: ['Anionic Surfactant','Emulsifiers & Demulsifiers']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Sugar-free'],
        end_use_claims: [],
        origin: []
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: [''],
        home_care_applications: ['Hard Surface Cleaners'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: ['ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)'],
        certifications: []
      },
      regional_availability: {
        regional_availability:['Asia','Europe']
      }
    },
    {
      resource_id: company_2.id,
      resource_type: company_2.class.name,
      brand_id: company_2_brand_1.id,
      name: 'Crodafos™ C10A',
      industry: [],
      markets: ['Home & Personal Care'],
      technologies: ['Cleaning Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: ['Organophosphates','Phosphate Esters','Phosphorous-based Compounds'],
        chemical_name: [],
        inci_names: [],
        functions: ['Anionic Surfactant','Corrosion Inhibitor'],
        families: ['Anionic Surfactant','Performance Additives']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Non-GMO'],
        end_use_claims: [],
        origin: []
      },
      applications_and_uses: {
        application_format: [],
        fluids_and_lubricants_type: [''],
        home_care_applications: ['Hard Surface Cleaners'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: [],
        chemical_inventories: ['ENCS (Japan)','IECSC (China)','ISHL (Japan)','KECI (Korea)'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia','Europe']
      }
    },
    {
      resource_id: company_2.id,
      resource_type: company_2.class.name,
      brand_id: company_2_brand_1.id,
      name: 'Crodafos™ T5A',
      industry: [],
      markets: ['Home & Personal Care'],
      technologies: ['Cleaning Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: ['Organophosphates','Phosphate Esters'],
        chemical_name: [],
        inci_names: [],
        functions: ['Anionic Surfactant','Corrosion Inhibitor','Anti-Static Agent','Emulsifier','Wetting Agent'],
        families: ['Anionic Surfactant','Performance Additives','Wetting & Dispersion Aids','Emulsifiers & Demulsifiers']
      },
      features_and_benefits: {
        benefit_claims: [],
        ingredient_claims: ['Acrylamide-free','Vegan'],
        end_use_claims: ['Bio-based'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Institutional & Catering','Vehicle & Machinery'],
        fluids_and_lubricants_type: [''],
        home_care_applications: ['Hard Surface Cleaners'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Chinese Pharmacopeia (ChP)','EXCiPACT','Kosher','United States Pharmacopeia (USP)'],
        chemical_inventories: ['AICS (Australia)','DSL (Canada)','EINECS (EU)','ENCS (Japan)','IECSC (China)','INSQ (Mexico)','ISHL (Japan)','KECI (Korea)','NZIoC (New Zealand)','PICCS (Phillipines)','TCSI (Taiwan)','TSCA (USA)'],
        certifications: ['FDA','Kosher','Halal','GMP']
      },
      regional_availability: {
        regional_availability: ['Asia','Canada','Latin America','Mexico','USA']
      }
    },
    {
      resource_id: company_2.id,
      resource_type: company_2.class.name,
      brand_id: company_2_brand_2.id,
      name: 'Incrosoft™ T-90 LM',
      industry: [],
      markets: ['Home & Personal Care'],
      technologies: ['Cleaning Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: ['Polyalphaolefins (PAO)'],
        chemical_name: [],
        inci_names: [],
        functions: ['Anti-Static Agent','Wetting Agent'],
        families: ['Performance Additives','Wetting & Dispersion Aids']
      },
      features_and_benefits: {
        benefit_claims: ['Anti-wear (AW)'],
        ingredient_claims: ['Acrylamide-free'],
        end_use_claims: ['Bio-based'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Institutional & Catering','Surface Care','Laundry & Fabric Care'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['NSF H2'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Asia','Europe','Global','Middle East','North America']
      }
    },
    {
      resource_id: company_2.id,
      resource_type: company_2.class.name,
      brand_id: company_2_brand_2.id,
      name: 'Incrosoft™ 8000',
      industry: [],
      markets: ['Home & Personal Care'],
      technologies: ['Cleaning Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: ['Polyalkylene Glycols (PAG)'],
        chemical_name: ['Styrenics'],
        inci_names: [],
        functions: ['Anti-Static Agent','Wetting Agent'],
        families: ['Rheology Modifiers','Styrenic Thermoplastic Elastomers (TPE-S)']
      },
      features_and_benefits: {
        benefit_claims: ['Stress Reducing','Wrinkle Reduction'],
        ingredient_claims: ['TSE-free','Porcine-free','Fragrance allergen-free'],
        end_use_claims: ['Anti-fungal','DNA protection', 'Skin protection','Environmental protection'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Spray','Stick'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: ['Face Creams & Lotions','Hand Cream'],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Directive 2011/65/EC amended through EU/2015/863 (RoHS)','RoHS 2 Compliant','RoHS Compliant','Waste Electrical & Electronic Equipment Directive (WEEE)'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Europe','Middle East']
      }
    },
    {
      resource_id: company_3.id,
      resource_type: company_3.class.name,
      brand_id: company_3_brand_1.id,
      name: 'Natrulon® H-10',
      industry: ['Personal Care'],
      markets: ['Home & Personal Care'],
      technologies: ['Cosmetic Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: ['Polyglycerin-10','Water'],
        functions: ['Moisturizing Agent','Soothing Agent','Viscosity Modifier'],
        families: ['Rheology Modifiers','Stabilizers','Sensorial Modifiers','Other Functional Additives']
      },
      features_and_benefits: {
        benefit_claims: ['Moisturizing','Soothing'],
        ingredient_claims: ['Natural Origin'],
        end_use_claims: ['Moisturizing','Soothing'],
        origin: ['Plant Origin']
      },
      applications_and_uses: {
        application_format: ['Spray','Rinse Off','Gel'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: ['Face Creams & Lotions','Body Firming Lotion','Body Creams& Lotions','Around Eye Creams& Gels'],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['NaTrue'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Europe','North America']
      }
    },
    {
      resource_id: company_3.id,
      resource_type: company_3.class.name,
      brand_id: company_3_brand_1.id,
      name: 'Natrulon® H-6',
      industry: ['Hygiene'],
      markets: ['Home & Personal Care'],
      technologies: ['Cosmetic Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: ['Polyglycerin-6','Water'],
        functions: ['Foam Stabilizer','Humectant','Moisturizing Agent','Soothing Agent','Viscosity Modifier'],
        families: ['Rheology Modifiers','Stabilizers','Sensorial Modifiers','Other Functional Additives']
      },
      features_and_benefits: {
        benefit_claims: ['Moisturizing','Soothing'],
        ingredient_claims: ['Natural Origin'],
        end_use_claims: ['Moisturizing','Soothing'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Creams','Lotions','Spray','Rinse Off','Gel'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: ['Face Creams & Lotions','Body Firming Lotion','Around Eye Creams& Gels'],
        treatment_products: []
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['NaTrue'],
        chemical_inventories: [],
        certifications: ['NATRUE']
      },
      regional_availability: {
        regional_availability: ['Europe','North America']
      }
    },
    {
      resource_id: company_3.id,
      resource_type: company_3.class.name,
      brand_id: company_3_brand_2.id,
      name: 'ViscUp® 160',
      industry: ['Personal Care'],
      markets: ['Home & Personal Care'],
      technologies: ['Cosmetic Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: ['Mineral Oil','Hydrogenated Styrene/Butadiene Copolymer'],
        functions: ['Film Former','Gel Former','Gloss Enhancer','Viscosity Modifier'],
        families: ['Rheology Modifiers','Color & Effects','Film Formers','Other Functional Additives']
      },
      features_and_benefits: {
        benefit_claims: ['Consistency','Emulsion Stabilization','Formula Stability','Sprayability','Viscosity Enhancer'],
        ingredient_claims: ['Natural Origin'],
        end_use_claims: ['Formula stability','Consistency','Sprayability','Emulsion Stability','Viscosity Enhancer'],
        origin: ['Mineral Origin']
      },
      applications_and_uses: {
        application_format: ['Ointments','Serum','Stick','Creams','Lotions','Rinse Off','Gel'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: ['Anti-Aging Products','Around Eye Creams& Gels'],
        treatment_products: ['Ointments']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['COSMOS','ECOCERT'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Europe','North America']
      }
    },
    {
      resource_id: company_3.id,
      resource_type: company_3.class.name,
      brand_id: company_3_brand_3.id,
      name: 'Biocell™ SOD',
      industry: ['Hygiene'],
      markets: ['Home & Personal Care'],
      technologies: ['Cosmetic Ingredients'],
      physical_form: [],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: ['Superoxide Dismutase'],
        functions: ['Anti-Aging Agent','Anti-Pollution Agent','Antioxidant','Color Fixative','Conditioner','Protective Agent','Reducing Agent','Soothing Agent'],
        families: ['Preservatives','Sensorial Modifiers','Other OTC Actives','Skin Actives']
      },
      features_and_benefits: {
        benefit_claims: ['Antioxidant','Color Protection','Free Radical Scavenging','Soothing'],
        ingredient_claims: ['Natural'],
        end_use_claims: ['Soothing','Antioxidant','Free radical scavenging','Protection','Color protection'],
        origin: ['Biotechnology']
      },
      applications_and_uses: {
        application_format: ['Ointments','Serum','Stick','Creams','Lotions','Rinse Off','Gel'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: ['Industrial Applications'],
        skin_care_applications: ['Anti-Aging Products','Around Eye Creams& Gels','Facial Cleanser','Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['COSMOS'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Europe','North America']
      }
    },
    {
      resource_id: company_4.id,
      resource_type: company_4.class.name,
      brand_id: company_4_brand_1.id,
      name: 'PRIMETIME N&A Hazelnut Flavor Type (BD-10576)',
      industry: [],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: [],
        functions: ['Flavoring Agent'],
        families: ['Flavor Ingredients']
      },
      features_and_benefits: {
        benefit_claims: ['Non-Irradiated','Ovo-Lacto Vegetarian Suitable'],
        ingredient_claims: ['Natural'],
        end_use_claims: ['Antioxidant','Free radical scavenging','Protection','Color protection'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Serum'],
        fluids_and_lubricants_type: [],
        home_care_applications: [],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Around Eye Creams& Gels','Facial Cleanser','Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Kosher','TTB Approved'],
        chemical_inventories: ['Kosher Dairy','Kosher Meat','Kosher Parve'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_4.id,
      resource_type: company_4.class.name,
      brand_id: company_4_brand_1.id,
      name: 'PRIMETIME EverFresh 100 Nat Pumpkin (puree) Flavor Type (BD-10449)',
      industry: [],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Solid'],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: [],
        functions: ['Flavoring Agent'],
        families: ['Flavor Ingredients']
      },
      features_and_benefits: {
        benefit_claims: ['Non-Irradiated','Ovo-Lacto Vegetarian Suitable'],
        ingredient_claims: ['Natural'],
        end_use_claims: ['Antioxidant','Free radical scavenging','Protection','Color protection'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Serum'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Food & Nutrition'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Around Eye Creams& Gels','Facial Cleanser','Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Kosher','Halal'],
        chemical_inventories: ['Halal','Kosher Dairy','Kosher Meat','Kosher Parve'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_4.id,
      resource_type: company_4.class.name,
      brand_id: company_4_brand_1.id,
      name: 'PRIMETIME Nat Tomato Sauce & Herb Flavor Type (BD-10219)',
      industry: [],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: [],
        functions: ['Flavoring Agent'],
        families: ['Flavor Ingredients']
      },
      features_and_benefits: {
        benefit_claims: ['Non-Irradiated',],
        ingredient_claims: ['Natural'],
        end_use_claims: ['Gluten-free','Color protection'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Serum'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Food & Nutrition'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Facial Cleanser','Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Halal'],
        chemical_inventories: ['Halal','Kosher Dairy','Kosher Meat'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_4.id,
      resource_type: company_4.class.name,
      brand_id: company_4_brand_1.id,
      name: 'PRIMETIME Nat Oregano Flavor WONF (BD-10211)',
      industry: [],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: [],
        chemical_name: [],
        inci_names: [],
        functions: ['Flavoring Agent'],
        families: ['Flavor Ingredients']
      },
      features_and_benefits: {
        benefit_claims: ['Non-Irradiated',],
        ingredient_claims: ['Natural'],
        end_use_claims: ['Gluten-free','Color protection','Ovo-Lacto Vegetarian Suitable'],
        origin: []
      },
      applications_and_uses: {
        application_format: ['Serum','Savory & Culinary'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Food & Nutrition'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Halal'],
        chemical_inventories: ['Kosher Dairy','Kosher Meat'],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_1.id,
      name: 'NUTRIOSE® FM 06 Soluble Corn Fiber',
      industry: 'Coatings, Inks and Adhesives',
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: ['Alkyl Sulfonates'],
        chemical_name: ['Benzenesulfonic acid, 4-C10-13-sec-alkyl derivs'],
        inci_names: ['Leontopodium Alpinum Flower/Leaf Extract'],
        functions: ['Carrier','Encapsulant'],
        families: ['Carriers & Bulking Aids','other functional additives']
      },
      features_and_benefits: {
        benefit_claims: ['Blood Glucose Management','Calorie Reduction','Excellent Digestive Tolerance'],
        ingredient_claims: ['Non-GMOSugar-free'],
        end_use_claims: ['Free radical Scavenging','Stress reducing','Sensory enhancement'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Cereals & Snacks','Confectionery','Convenience Foods'],
        fluids_and_lubricants_type: [''],
        home_care_applications: [''],
        plastics_and_elastomers_end_uses: [''],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: [],
        water_content: []
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['EFISC','Halal','Kosher'],
        chemical_inventories: ['IECSC (China)','TSCA Exempt (USA)']
      },
      regional_availability: {
        regional_availability: ['Latin America']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_1.id,
      name: 'NUTRIOSE® Pea 06 Soluble Pea Fiber',
      industry: 'Coatings, Inks and Adhesives',
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: [''],
        chemical_name: [''],
        inci_names: [],
        functions: ['Carrier','Encapsulant'],
        families: ['Carriers & Bulking Aids','other functional additives']
      },
      features_and_benefits: {
        benefit_claims: ['Blood Glucose Management','Calorie Reduction','Excellent Digestive Tolerance'],
        ingredient_claims: ['Non-GMOSugar-free'],
        end_use_claims: [''],
        origin: ['']
      },
      applications_and_uses: {
        application_format: ['Cereals & Snacks','Confectionery','Convenience Foods'],
        fluids_and_lubricants_type: [''],
        home_care_applications: [''],
        plastics_and_elastomers_end_uses: [''],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: [''],
        water_content: ['']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['EFISC','Halal','Kosher'],
        chemical_inventories: []
      },
      regional_availability: {
        regional_availability: ['North America','Latin America']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_1.id,
      name: 'NUTRIOSE® FB 06 Soluble Wheat Fiber',
      industry: 'Coatings, Inks and Adhesives',
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: [''],
        chemical_name: [''],
        inci_names: [],
        functions: ['Carrier','Encapsulant'],
        families: ['Carriers & Bulking Aids','other functional additives']
      },
      features_and_benefits: {
        benefit_claims: ['Blood Glucose Management','Calorie Reduction','Excellent Digestive Tolerance'],
        ingredient_claims: ['Non-GMOSugar-free'],
        end_use_claims: [''],
        origin: ['']
      },
      applications_and_uses: {
        application_format: ['Cereals & Snacks','Confectionery','Convenience Foods'],
        fluids_and_lubricants_type: [''],
        home_care_applications: [''],
        plastics_and_elastomers_end_uses: [''],
        skin_care_applications: [],
        treatment_products: []
      },
      properties: {
        molecular_weight: [''],
        water_content: ['']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['EFISC','Halal','Kosher'],
        chemical_inventories: []
      },
      regional_availability: {
        regional_availability: ['North America']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_2.id,
      name: 'GLUCIDEX® Dried Glucose Syrup 39',
      industry: ['Health Care'],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: ['Botanical derivatives'],
        chemical_name: [],
        inci_names: ['Glycerin'],
        functions: ['Bulking Agent','Cryoprotectant'],
        families: ['Carriers & Bulking Aids','Processing Aids']
      },
      features_and_benefits: {
        benefit_claims: ['Nutritional Balance','Prevents Crystallization','Shelf Life Extension',],
        ingredient_claims: ['Non-GMO'],
        end_use_claims: ['Smoothing','Skin barrier','Soothing','Nourishing'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Cream','Serum','Powder'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Tabletop Condiments','Toppings','Tube Fed Nutrition'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Facial Moisturizer'],
        treatment_products: ['Acne Treatments','Scalp Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['COSMOS','California Proposition 65'],
        chemical_inventories: [],
        certifications: ['COSMOS']
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_2.id,
      name: 'GLUCIDEX® Dried Glucose Syrup PREMIUM IT 29',
      industry: ['Health Care'],
      markets: ['Food & Nutrition'],
      technologies: ['Food Ingredients'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: ['Palm derivatives'],
        chemical_name: [],
        inci_names: ['Leaf Extract'],
        functions: ['Bleaching Agent','Hydrophilic Agent'],
        families: ['Other OTC Activities']
      },
      features_and_benefits: {
        benefit_claims: ['Nourishing','DNA Protection',],
        ingredient_claims: ['Hygiene'],
        end_use_claims: ['Redness Reduction','Anti-Microbial'],
        origin: ['Animal Origin']
      },
      applications_and_uses: {
        application_format: ['Cream','Serum','Powder'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Anti-Bacterial','Toppings','Tube Fed Nutrition'],
        plastics_and_elastomers_end_uses: [],
        skin_care_applications: ['Hand Cream'],
        treatment_products: ['Acne Treatments']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['CODEX STAN 212-1999'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia']
      }
    },
    {
      resource_id: company_5.id,
      resource_type: company_5.class.name,
      brand_id: company_5_brand_2.id,
      name: 'GLUCIDEX® Dried Glucose Syrup IT 47',
      industry: ['Personal Care & Pharma'],
      markets: ['Food & Nutrition','Pharma'],
      technologies: ['Food Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: ['Siloxanes'],
        chemical_name: ['Dimethicone/Vinyl Dimethicone Crosspolymer'],
        inci_names: ['Cyclopentasiloxane'],
        functions: ['Aesthetic Enhancer','Anti-Tack Agent','Matting Agent','Smoothing Agent'],
        families: ['Color & Effects']
      },
      features_and_benefits: {
        benefit_claims: ['Smooth Feel','Soft Feel','Spreadability',],
        ingredient_claims: ['GMO'],
        end_use_claims: ['Light feel','Powdery feel','Silky fee'],
        origin: ['Animal Origin']
      },
      applications_and_uses: {
        application_format: ['Gel'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Hand Dishwash','Hard Surface Cleaners'],
        plastics_and_elastomers_end_uses: ['Medical Devices','Transmission Applications'],
        skin_care_applications: ['After Shaves','Hand Cream'],
        treatment_products: ['Eczema Treatment','Acne Treatments']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Halal'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Asia Pacific']
      }
    },
    {
      resource_id: company_6.id,
      resource_type: company_6.class.name,
      brand_id: company_6_brand_1.id,
      name: 'ADDITOL® VXL 4950',
      industry: ['Textile & Leather'],
      markets: ['Automotive & Transportation','Paints & Coatings'],
      technologies: ['CASE Ingredients'],
      physical_form: ['Liquid'],
      identification_and_functionality: {
        chemical_family: ['Amides'],
        chemical_name: ['Caprolactam'],
        inci_names: ['Water'],
        functions: ['Adhesion Promoter','Coupling Agent'],
        families: ['Functional Additives','Surface Modifiers']
      },
      features_and_benefits: {
        benefit_claims: ['Restoring','Anti-Inflammatory','Nourishing'],
        ingredient_claims: ['Organic','Non-GMO','Porcine-Free'],
        end_use_claims: ['Anti-aging','Wrinkle reduction'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Balm','Rinse Off'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Bleach','Bottle Wash'],
        plastics_and_elastomers_end_uses: ['Medical Devices','Transmission Applications'],
        skin_care_applications: ['After Shaves','Hand Cream'],
        treatment_products: ['Eczema Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['Halal'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Asia Pacific']
      }
    },
    {
      resource_id: company_6.id,
      resource_type: company_6.class.name,
      brand_id: company_6_brand_1.id,
      name: 'ADDITOL® XW 6575',
      industry: ['Lubricants & Metalworking'],
      markets: ['Paints & Coatings'],
      technologies: ['Base Chemicals & Intermediates','Cleaning Ingredients'],
      physical_form: ['Solid'],
      identification_and_functionality: {
        chemical_family: ['Phenols & Phenolics','Phenols'],
        chemical_name: ['Carbolic Acid','Phenol'],
        inci_names: [],
        functions: ['Exfoliant, Chemical','Disinfectant','Anti-Acne Agent '],
        families: ['Phenolics','Cosmetic Ingredients — Cosmetic Actives','Skin Actives']
      },
      features_and_benefits: {
        benefit_claims: ['Benzene-free','High Purity'],
        ingredient_claims: ['Tin-free','NMP-free','TMA-free'],
        end_use_claims: ['Waterborne'],
        origin: ['Non-vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Lotions'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Air Fresheners & Deodorizers','Hard Surface Cleaners'],
        plastics_and_elastomers_end_uses: ['Levers','Transmission Applications'],
        skin_care_applications: ['Foot Powders & Sprays'],
        treatment_products: ['CORN PO4 PHB']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['BDIH Standard','COSMOS'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Asia Pacific']
      }
    },
    {
      resource_id: company_6.id,
      resource_type: company_6.class.name,
      brand_id: company_6_brand_1.id,
      name: 'ADDITOL® XL 6577',
      industry: ['Paper, Water Treatment & Oilfield Chemicals'],
      markets: ['Automotive & Transportation','Paints & Coatings'],
      technologies: ['CASE Ingredients'],
      physical_form: ['Powder'],
      identification_and_functionality: {
        chemical_family: ['Polyamides'],
        chemical_name: ['Polyamide 6 (PA 6)'],
        inci_names: ['Paraffinum Liquidum'],
        functions: ['Liquid Deicer','Binder'],
        families: ['Functional Additives','Surface Modifiers','Other Functional Additives','Performance Additives']
      },
      features_and_benefits: {
        benefit_claims: ['Binding','Dry Feel','Good Adsorptive Properties'],
        ingredient_claims: ['Organic','Non-animal origin','Non-GMO'],
        end_use_claims: ['Oil control','Silky feel','Mattifying effect'],
        origin: ['Vegetal Origin']
      },
      applications_and_uses: {
        application_format: ['Powder','Spray'],
        fluids_and_lubricants_type: [],
        home_care_applications: ['Multisurface Cleaners','Liquid Laundry Detergents'],
        plastics_and_elastomers_end_uses: ['Automotive Applications','Electrical/Electronic Applications','Gears'],
        skin_care_applications: ['After Shaves','Hand Cream'],
        treatment_products: ['Eczema Treatment']
      },
      properties: {
        molecular_weight: ['approx. 410', 'g/mol', '600-19'],
        water_content: ['max. 0.1', 'wt. %', '-']
      },
      regulatory_and_compliance: {
        certifications_and_compliance: ['RSPO MassBalance Certified','Detergent Ingredient Database (DID List)'],
        chemical_inventories: [],
        certifications: []
      },
      regional_availability: {
        regional_availability: ['Africa','Asia Pacific','Middle East']
      }
    }
  ]
