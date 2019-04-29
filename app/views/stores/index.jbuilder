json.store do
    json.name @store.name
    json.instagram_handle @store.instagram_handle
    json.description @store.description
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
              end
            end
          end
        end
      end
    end
end
