class StaticPagesController < ApplicationController
    def home
        @photos = Flickr.photos.search(user_id: params[:flickr][:id]) if params[:flickr]
        @default_value = default_value
        console
    end

    private

        def default_value
            params[:flicker] ? params[:flicker][:id] : "Flickr id"
        end
end
