json.store do
    json.name @store.name
    json.instagram_handle @store.instagram_handle
    json.description @store.description
    json.cover_photo @store.cover_photo.service_url if @store.cover_photo.attached?
    json.menus do
      json.array!(@store.menus) do |menu|
        json.name menu.name
        json.menu_categories do
          json.array!(menu.menu_categories) do |mc|
            json.name mc.name
            json.items do
              json.array!(mc.items) do |item|
                json.name item.name
                json.description item.description
                json.image item.image.service_url if item.image.attached?
              end
            end
          end
        end
      end
    end
end
