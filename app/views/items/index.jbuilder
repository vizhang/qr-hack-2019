json.items do
  json.array! @items do |item|
    json.name item.name
    json.description item.description
    json.image item.image.service_url if item.image.attached?
  end
end

#json.image url_for(tweet.image) if tweet.image.attached?
