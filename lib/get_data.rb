class GetData

response = RestClient.get("https://www.eventbriteapi.com/v3/events/search?location.address=denver/", 'Authorization': 'Bearer 64UHHUOJPWQ5KDOPPXBD')

parse = JSON.parse(response)

    def self.category_ids_and_names
        parse["categories"].map do |category|
            category["id"] + " " + category["name"]
        end
    end

    # def select_by_category(id)
    #     self["events"].select do |event|
    #         event["category_id"] == id
    #     end
    # end

    def self.event_names_within_category
        select_by_category.map do |event|
            event["name"]["text"]
        end
    end
end