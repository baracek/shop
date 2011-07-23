@products = Product.find(:all)
@products.each do |product_to_generate|
  puts product_to_generate.name
  product_to_generate.do_create_variants( true )
end