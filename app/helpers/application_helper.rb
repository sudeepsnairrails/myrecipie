module ApplicationHelper
  def gravathar_for(chef, options = {size: 100})
    gravathar_id = Digest::MD5::hexdigest(chef.email.downcase)
    size = options[:size]
    gravathar_url = "https://secure.gravatar.com/avatar/#{gravathar_id}?s=#{size}"
    image_tag(gravathar_url,alt: chef.chefname, class: "gravatar")
  end
end
