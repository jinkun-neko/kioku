module ApplicationHelper

    def title(page_title ='')
        kioku_title = "KIOKU"
        if page_title.empty?
            kioku_title
        else
            page_title + "○" + kioku_title
        end
    end
end
