article_1 = Article.new(title:"Le Wagon buys more tv's", content:"Le Wagon, an international coding school, has proceded to aquire 179 tv's to improve their campuses leisure time.", image_url:"https://img.choice.com.au/-/media/13ad4b30d10f4c46acc275f800309e76.ashx?w=760")
article_1.save
puts "#{article_1.title} was created!"
article_2 = Article.new(title:"Crazy traffic at Rua Conde Redondo", content:"Le Wagon, an international coding school, has noticing the increase of traffic in at it's door. Crazy!", image_url:"https://media.cntraveler.com/photos/53e2f41cdddaa35c30f66775/16:9/w_1920,c_limit/highway-traffic.jpg")
article_2.save
puts "#{article_2.title} was created!"
